import json
import os
from fastapi import FastAPI, Request
from matplotlib import pyplot as plt
from PIL import Image
from fastapi.middleware.cors import CORSMiddleware

import tensorflow as tf
import numpy as np
import yaml
import io
import cv2


# read config file
def read_config():
    config = {}
    print(os.path.curdir)
    with open(os.path.join('api','models_config.yaml'), 'r') as cf:
        config = yaml.safe_load(cf)

    for var in config:
        config[var] = config[var].replace(';', os.sep)

    return config


# create app and load model
config = read_config()
service = FastAPI()

# read path to test images
test_img = [os.path.join(config['TEST_IMG_PATH'], 'test1.jpg'), os.path.join(config['TEST_IMG_PATH'], 'test2.jpg'), os.path.join(config['TEST_IMG_PATH'], 'test3.jpg'),
os.path.join(config['TEST_IMG_PATH'], 'test4.jpg'), os.path.join(config['TEST_IMG_PATH'], 'test5.jpg'), os.path.join(config['TEST_IMG_PATH'], 'test6.jpg'),
os.path.join(config['TEST_IMG_PATH'], 'test7.jpg')]

# load pretrained models
age_model = tf.keras.models.load_model(config['A_M_PATH'])
gender_model = tf.keras.models.load_model(config['G_M_PATH'])
face_cascade = cv2.CascadeClassifier(config['FD_M_PATH'])


# add CORS middleware
service.add_middleware(
    CORSMiddleware,
    allow_origins=['*']
)


# status route
@service.get("/checkstatus")
async def read_root():
    """
        Check status of routes
    """

    url_list = [{"path": route.path, "name": route.name} for route in service.routes]

    if len(url_list) == 7:
        return "Healthy"
    else:
        return "Unhealthy"



async def make_predictions_pipeline(request, from_slider= False):
    
    if from_slider:
        file = await request.form()
        img_ind = file['img']
        image = Image.open(test_img[int(img_ind)])
    else:
        file = await request.form()
        im_b64 = file['img']

        image = im_b64.file.read()
        image = Image.open(io.BytesIO(image))

    image = np.asarray(image)

    gray_img = cv2.cvtColor(image, cv2.COLOR_RGB2GRAY)
    faces = face_cascade.detectMultiScale(gray_img, 1.1, 4)
    
    if len(faces) == 0:
        return "NO FACE DETECTED"

    x, y, w, h =  faces[0]
    #cv2.rectangle(image, (x, y), (x+w, y+h), (255, 0, 0), 2)


    image = Image.fromarray(image)
    image = image.crop((x, y, x + w, y + h))

    #cv2.imshow('image', np.asarray(image))
    #cv2.waitKey()

    image = tf.image.resize(image, [224,224]) 
    image = tf.keras.preprocessing.image.img_to_array(image)
    image = image / 255.0      
    image = tf.expand_dims(image, axis=0)

    age_prds = age_model.predict(image)
    gender_prds = gender_model.predict(image)

    age_prds = np.around(age_prds)
    gender_prds = np.around(gender_prds)
    gender = ""

    if gender_prds[0][0] == 0:
        gender = 'male'
    else:
        gender = 'female'

    data = {}
    data['age'] = str(age_prds[0][0])
    data['gender'] = gender
    b_box_arr = [(x, y, w, h) for (x, y, w, h) in faces]

    data['left'] = str(b_box_arr[0][0])
    data['top'] =  str(b_box_arr[0][1])
    data['width'] = str(b_box_arr[0][2])
    data['height'] = str(b_box_arr[0][3])
    predictions_json = json.dumps(data)

    return predictions_json


# slider predictions route
@service.post("/api/predictions_slider")
async def receive_image(request: Request):
    """
        Function for predicts from slider
    """ 
    results_json = await make_predictions_pipeline(request, from_slider= True)
    return results_json



# main predictions route
@service.post("/api/predictions")
async def receive_image(request: Request):
    """
        Function for predicts
        
        Example request:

        img = open( FILEPATH , 'rb')
        files = {'img': img}
        resp = requests.post("http://{host:port}/api/predictions", files= files)
    """ 

    results_json = await make_predictions_pipeline(request, from_slider= False)
    return results_json
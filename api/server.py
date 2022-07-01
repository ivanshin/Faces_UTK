import json
import base64
from urllib import request
from fastapi import FastAPI, File, Request
from matplotlib import pyplot as plt
from PIL import Image
from fastapi.middleware.cors import CORSMiddleware
from image_item_class import Image_upload

import tensorflow as tf
import numpy as np
import io


# create app and load model
service = FastAPI()
age_model = tf.keras.models.load_model(r'D:\Projects\Python\Faces_UTK\model_train\trained_model\age_model.h5')
gender_model = tf.keras.models.load_model(r'D:\Projects\Python\Faces_UTK\model_train\trained_model\gender_model.h5')

service.add_middleware(
    CORSMiddleware,
    allow_origins=['*']
)
    
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


@service.get("/api/home")
async def home_page():
    """
        Homepage route
    """
    return


@service.post("/api/predictions")
async def receive_image(request: Request):
    """
        Function for predicts
        
        Example request:
        resp = requests.post("http://127.0.0.1:8000/api/predictions", files= files)
    """ 

    file = await request.form()
    im_b64 = file['img']

    image = im_b64.file.read()
    image = Image.open(io.BytesIO(image))
    image = np.asarray(image)

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
    predictions_json = json.dumps(data)

    return predictions_json
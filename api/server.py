import json
from urllib import request
from fastapi import FastAPI, File
from matplotlib import pyplot as plt
from PIL import Image

from image_item_class import Image_upload

import tensorflow as tf
import numpy as np
import io


service = FastAPI()
model = tf.keras.models.load_model(r'D:\Projects\Python\Faces_UTK\model_train\trained_model\cnn_v3')

@service.get("/")
async def read_root():
    return {"body": "Healthy."}


@service.get("/api/home")
async def home_page():
    return


@service.post("/api/predictions")
async def grab_image(file: bytes= File()):
    
    image = np.array(Image.open(io.BytesIO(file)))
    image = image / 255
    image = image.reshape((1, 200, 200,3))
    #return f'shape: {image.shape}'
    

    predictions = model.predict(image)
    
    predictions = np.around(predictions)
    data = {}
    data['age'] = str(predictions[0][0])
    data['gender'] = str(predictions[0][1])
    data['race'] = str(predictions[0][2])
    predictions_json = json.dumps(data)

    return predictions_json
from PIL import Image
import numpy as np
import requests


img = open('./model_train/test.jpg', 'rb')

files = {'file': ('test_image', img, "image/jpeg")}

resp = requests.post(" http://127.0.0.1:8000/predictions", files= files)
print(resp.json())
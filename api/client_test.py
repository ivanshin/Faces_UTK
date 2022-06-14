import json
from os import system
from PIL import Image
import numpy as np
import requests
import matplotlib.pyplot as plt


img = open('./model_train/test.jpg', 'rb')

files = {'file': ('test_image', img, "image/jpeg")}

resp = requests.post(" http://127.0.0.1:8000/api/predictions", files= files)
print(resp.json())

resp = json.loads(resp.json())
pil_img = Image.open('./model_train/test.jpg')
plt.imshow(pil_img)
plt.title(f"AGE: {resp['age']}, GENDER {resp['gender']}, RACE: {resp['race']}")
plt.show()
system("pause")
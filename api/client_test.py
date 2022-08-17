import json
from os import system
from PIL import Image
import numpy as np
import requests
import matplotlib.pyplot as plt
import matplotlib.patches as patches


FILEPATH = './model_train/test_6.jpg'

# read image as file
img = open( FILEPATH , 'rb')
#files = {'file': ('img', img, "image/jpeg")}
files = {'img': img}

# send request
resp = requests.post(" http://127.0.0.1:8081/api/predictions", files= files)
print(resp.json())  


try:
    # illustrate results
    resp = json.loads(resp.json())
    pil_img = Image.open(FILEPATH)

    fig, ax = plt.subplots()
    ax.imshow(pil_img)

    # plot b_box
    b_box_coord = resp['b_box'][0]
    b_box_coord = b_box_coord.replace('(', '').replace(')', '')
    b_box_coord = b_box_coord.split(',')
    b_box_coord = [int(num) for num in b_box_coord]
    b_box = patches.Rectangle((b_box_coord[0], b_box_coord[1]), b_box_coord[2], b_box_coord[3], linewidth=1, edgecolor='r', facecolor= 'none')

    # Add the patch to the Axes
    ax.add_patch(b_box)

    # Set title
    ax.set_title(f"AGE: {resp['age']}, GENDER: {resp['gender']}")
    plt.show()
except:
    print("No face detected")
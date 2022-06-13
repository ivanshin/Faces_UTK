import tensorflow as tf
import numpy as np
import os
import matplotlib.pyplot as plt
from PIL import Image



print(os.curdir)

# model load
cnn_model_pretrained = tf.keras.models.load_model(os.path.join('.', 'model_train', 'trained_model', 'cnn_v2'), custom_objects=None, compile=True, options=None)
cnn_model_pretrained.summary()

# load test image
test_img = Image.open(os.path.join('.', 'model_train', 'test.jpg'))
test_img.show()

# resize image
test_img = test_img.resize((200, 200))
test = np.asarray(test_img)
test = test/ 255
test = test.reshape((1, 200, 200,3))
test_img.show()

# predict keypoints
preds = cnn_model_pretrained.predict(test)

# show res
plt.imshow(test_img)
y_resh = tf.reshape(preds[0],[68, 2])
plt.scatter(*zip(*y_resh), marker= 'x', color= 'b')
plt.show()


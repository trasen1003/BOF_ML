import numpy as np
import matplotlib.pyplot as plt

from tensorflow.keras import Model
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Input, Conv2D, MaxPooling2D

h1 = 10
h3 = 20
h2 = 30

model = Sequential()

input_shape = Input(shape=(10, 20, 1))
tower_1 = Conv2D(20, (100, 5), padding='same', activation='relu')(input_shape)


model = Model(inputs=input_shape, outputs=tower_1)

model.summary()


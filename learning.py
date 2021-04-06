import numpy as np
import matplotlib.pyplot as plt

from tensorflow.keras import Model
from tensorflow.keras.models import Sequential
from tensorflow.keras.utils import plot_model
from tensorflow.keras.layers import Input, Conv1D, GlobalMaxPooling1D, concatenate, Dense

h1 = 10
h3 = 20
h2 = 30
context_length = 100
vec_size = 100
n_conv_layer = 0

def build_model(h1,h2,h3,context_length,batch_size = 4,vec_size = 100,n_conv_layer = 3) :
    model = Sequential()

    input_shape = Input(shape=(context_length,vec_size))
    
    conv1D_1 = Conv1D(3,h1, padding='same', activation='relu')(input_shape)
    conv1D_2 = Conv1D(3,h2, padding='same', activation='relu')(input_shape)
    conv1D_3 = Conv1D(3,h3, padding='same', activation='relu')(input_shape)

    merged = concatenate([conv1D_1,conv1D_2,conv1D_3], axis=2)

    max_pooling = GlobalMaxPooling1D("channels_first")(merged)

    out = Dense(2, activation = 'relu')(max_pooling)

    model = Model(input_shape, out)

    return model


model = build_model(h1,h2,h3,context_length)
plot_model(model, to_file="model_graph.png")
model.summary()

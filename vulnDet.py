import numpy as np
import copy
import pygments
from pygments.token import Token
from pygments import lexers, highlight
import os
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
from random import randint
import time
train_length = 1000
test_length = 100
context_size = 20
batch_size = 64
print("0")

lexer = lexers.get_lexer_by_name('cpp')
#tokens form file
def extract_tokens(filename):
    f = open(filename)
    code_str = f.read()
    f.close()
    if code_str == None:
        return []
    else:
        names = []        

        def process_tokens(tokens):
            #reject tokens which types or values are considered not interesting
            for _type, value in tokens:
                value = "".join(value.split(" "))
                if _type not in Token.Comment and _type not in Token.Text:
                    if value not in ('','\n'):
                        names.append(value)
        tokens = pygments.lex(code_str,lexer)
        process_tokens(tokens)
        return names

print("0")

#files to learn word2vec on
files = []
for elt in os.listdir("./ex1"):
    files.append("./ex1/" + elt)

def loss_fn(y, y_pred):
    return (y-y_pred)**2



def ak_rule(word, count, min_count): # params are needed
    return gensim.utils.RULE_KEEP


class MyCorpus:
    """An iterator that yields sentences (lists of str)."""
    def __init__(self, files):
        self.files = files

    def __iter__(self):
        for code in self.files:
            tokens = extract_tokens(code)
            if tokens != []:
                yield tokens

import gensim.models

sentences = MyCorpus(files)
model = gensim.models.Word2Vec(sentences=sentences, max_final_vocab = 10)

for index, word in enumerate(model.wv.index_to_key):
    if index == 10:
        break
    print(f"word #{index}/{len(model.wv.index_to_key)} is {word}")
print("done")

vec_length = len(model.wv['int'])
print(vec_length)

dl_model = keras.Sequential(
    [
        layers.Conv1D(32, context_size, input_shape=(None, vec_length)),
            layers.GlobalMaxPooling1D(),
            layers.Dense(32),
            layers.Dense(2,activation='softmax')
    ])

optimizer = keras.optimizers.Adam()
loss = keras.losses.BinaryCrossentropy()
def train():
    t0 = time.time()
    t = t0
    nb_clean = 0
    nb_vuln = 0
    for i in range(train_length):
        print(i)
        file_list = []
        y = []
        for j in range(batch_size):
            vuln = randint(0,1)
            if(vuln):
                file_list.append('trainData/vuln/code%s.c'%str(nb_vuln))
                y.append([0,1])
                nb_vuln += 1

            else:
                file_list.append('trainData/clean/code%s.c'%str(nb_clean))
                y.append([1,0])
                nb_clean += 1
        modelex = copy.deepcopy(model)
        t0 = time.time()
        sentences = [extract_tokens(code) for code in file_list]
        modelex.build_vocab(sentences, update=True , trim_rule = ak_rule)
        t1 = time.time()
        modelex.train(sentences, total_examples=1, epochs=1)
        x = [modelex.wv[elt] for elt in sentences]  
        print(t1 - t0, "\n", time.time() - t1)
        x = keras.preprocessing.sequence.pad_sequences(x, padding='post', dtype=float, maxlen=1500)
        print(len(x[0]))
        with tf.GradientTape() as tape:
            logits = dl_model(x)
            loss_value = loss(y, logits)
            print(tf.reduce_mean(x))
        gradients = tape.gradient(loss_value, dl_model.trainable_weights)
        optimizer.apply_gradients(zip(gradients, dl_model.trainable_weights))

train()

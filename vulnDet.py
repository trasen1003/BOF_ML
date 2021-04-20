import numpy as np
import copy
import math
import pygments
from pygments.token import Token
from pygments import lexers, highlight
import os
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
from random import randint
import time
import pickle
import gen
from tqdm import tqdm

train_length = 100
test_length = 10
file_length = 100
context_size = 50
batch_size = 5
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



#files to learn word2vec on
files = []
for elt in os.listdir("./train"):
    files.append("./train/" + elt)


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

class MyDataset(keras.utils.Sequence):
    """A generator that yields examples for training"""
    def __getitem__(self,index):
        vuln_data = []
        clean_data = []
        x = []
        y= []
        nb_load = math.ceil(((index*batch_size)%file_length + batch_size)/file_length)
        for i in range(nb_load):
            vuln_data.append(pickle.load(open('%s/vuln/MIRl%s'%(self.folder,str(math.floor(index*batch_size/file_length) + i)),'rb')))
            clean_data.append(pickle.load(open('%s/clean/MIRl%s'%(self.folder,str(math.floor(index*batch_size/file_length) + i)),'rb')))
        for i in range((index*batch_size)%file_length, (index*batch_size)%file_length + batch_size):
            vuln = randint(0,1)
            #print("index : ",index,"i : ",i,"batch size : ",batch_size, "vuln len : ",len(vuln_data))
            if(vuln):
                x.append(vuln_data[math.floor(i/file_length)][i%file_length])
                y.append([0,1])
            else:
                x.append(clean_data[math.floor(i/file_length)][i%file_length])
                y.append([1,0])
        x = keras.preprocessing.sequence.pad_sequences(x, padding='post', dtype=float, maxlen=1500)
        y = np.array(y)
        return (x, y)

    def __init__(self, folder,batch_size = file_length):
        self.batch_size = batch_size
        self.folder = folder
        if (folder=="trainData"):
            self.len = math.floor(file_length*train_length/batch_size)
        else:
            self.len = math.floor(file_length*test_length/batch_size)

    def __len__(self):
        return self.len

import gensim.models

sentences = MyCorpus(files)
model = gensim.models.Word2Vec(sentences=sentences, max_final_vocab = 10)

for index, word in enumerate(model.wv.index_to_key):
    if index == 10:
        break
    print(f"word #{index}/{len(model.wv.index_to_key)} is {word}")
print("done")

vec_length = len(model.wv['('])
print(vec_length)

dl_model = keras.Sequential(
    [
        layers.Conv1D(32, context_size, input_shape=(1500, vec_length)),
        layers.GlobalMaxPooling1D(data_format="channels_first"),
        layers.Dense(32),
        layers.Dense(2,activation='softmax')
    ])

optimizer = keras.optimizers.Adam()
loss = keras.losses.BinaryCrossentropy()




def save(categorie, vulnType):
    file_list = []
    print("Training word2vec...")
    if(categorie=="trainData"):
        length = file_length*train_length
    else:
        length = file_length*test_length
    for j in range(length):
        file_list.append(categorie + '/' + vulnType +'/code%s.c'%str(j))
    sentences = [extract_tokens(code) for code in file_list]
    model.build_vocab(sentences, update=True , trim_rule = ak_rule)
    model.train(sentences, total_examples=1, epochs=1)
    l = len(sentences)
    print("Saving CNN training data")
    for i in tqdm(range(l//file_length)):
        file = open(categorie + '/' + vulnType +'/MIRl%s'%str(i), 'wb')
        pickle.dump([model.wv[sentences[j]] for j in range(i,i+file_length)], file)
        file.close()
#print("saving ...")
#save("clean")
#save("vuln")


def train():
    nb_clean = 0
    nb_vuln = 0
    for i in range(train_length):
        print(i)
        t0 = time.time()
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
        sentences = [extract_tokens(code) for code in file_list]
        modelex.build_vocab(sentences, update=True , trim_rule = ak_rule)
        modelex.train(sentences, total_examples=1, epochs=1)
        x = [modelex.wv[elt] for elt in sentences]  
        x = keras.preprocessing.sequence.pad_sequences(x, padding='post', dtype=float, maxlen=1500)
        print(len(x))
        print(x[0].shape)
        with tf.GradientTape() as tape:
            logits = dl_model(x)
            loss_value = loss(y, logits)
            print(tf.reduce_mean(x))
        gradients = tape.gradient(loss_value, dl_model.trainable_weights)
        optimizer.apply_gradients(zip(gradients, dl_model.trainable_weights))
        print(time.time() - t0)


def trainfrompickle():
    t0 = time.time()
    nb_clean = 0
    nb_vuln = 0
    while(nb_clean < 1000 and nb_vuln < 1000):
        print("a", "\n", nb_clean, "\n", nb_vuln)
        t0 = time.time()
        y = []
        vuln = randint(0,1)
        if(vuln):
            file = 'trainData/vuln/MIRl%s'%str(nb_vuln)
            y = [[0,1] for i in range(100)]
            nb_vuln += 1

        else:
            file = 'trainData/clean/MIRl%s'%str(nb_clean)
            y = [[1,0] for i in range(100)]
            nb_clean += 1
        x = pickle.load(open(file, 'rb'))
        x = keras.preprocessing.sequence.pad_sequences(x, padding='post', dtype=float, maxlen=1500)
        print(len(x))
        print(x[0].shape)
        with tf.GradientTape() as tape:
            logits = dl_model(x)
            print(logits.shape)
            loss_value = loss(y, logits)
            print(tf.reduce_mean(x))
        gradients = tape.gradient(loss_value, dl_model.trainable_weights)
        optimizer.apply_gradients(zip(gradients, dl_model.trainable_weights))
        print(time.time() - t0)

from tensorflow.keras.callbacks import TensorBoard 
import datetime
log_dir = "logs/fit/" + datetime.datetime.now().strftime("%Y%m%d-%H%M%S")


tensorboard_callback = TensorBoard(
    log_dir=log_dir,
    histogram_freq=1,
    write_graph=True,
    write_images=False,
    update_freq="epoch",
)

def trainwithfit():

    dl_model.compile(
        optimizer=tf.optimizers.Adam(learning_rate=0.01,),
        loss='binary_crossentropy',
        metrics=['accuracy'],
    )

    generatorTrain = MyDataset("trainData")
    dl_model.fit(
        x=generatorTrain,
        verbose=2,
        epochs=3,
        callbacks=[tensorboard_callback]
    )

    generatorTest = MyDataset("testData")
    dl_model.evaluate(
        x=generatorTest,
    )

def checkInstallation():
    if not os.path.isdir('trainData'):
        print("Training data not found, generating data...")
        os.mkdir('trainData')
        os.mkdir('trainData/clean')
        os.mkdir('trainData/vuln')
        print("Generating codes")
        for i in tqdm(range(file_length*train_length)):
            file = open('trainData/clean/code%s.c'%str(i), 'w')
            file.write(gen.genCode(0))
            file.close()
            file = open('trainData/vuln/code%s.c'%str(i), 'w')
            file.write(gen.genCode(1))
            file.close()
        print("Generating CNN training data")
        print("Generating data for non-vulnerable codes")
        save("trainData","clean")
        print("Generating data for vulnerable codes")
        save("trainData", "vuln")
        print("Data generation complete !")
    else:
        if not os.path.isdir('trainData/clean'):
            print("Non-vulnerable training data not found, generating data...")
            os.mkdir('trainData/clean')
            print("Generating codes")
            for i in tqdm(range(file_length*train_length)):
                file = open('trainData/clean/code%s.c'%str(i), 'w')
                file.write(gen.genCode(0))
                file.close()
            print("Generating CNN training data")
            save("trainData","clean")
            print("Data generation complete !")
        if not os.path.isdir('trainData/vuln'):
            print("Vulnerable training data not found, generating data...")
            os.mkdir('trainData/vuln')
            print("Generating codes")
            for i in tqdm(range(file_length*train_length)):
                file = open('trainData/vuln/code%s.c'%str(i), 'w')
                file.write(gen.genCode(1))
                file.close()
            print("Generating CNN training data")
            save("trainData","vuln")
            print("Data generation complete !")

    if not os.path.isdir('testData'):
        print("Test data not found, generating data...")
        os.mkdir('testData')
        os.mkdir('testData/clean')
        os.mkdir('testData/vuln')
        print("Generating codes")
        for i in tqdm(range(file_length*test_length)):
            file = open('testData/clean/code%s.c'%str(i), 'w')
            file.write(gen.genCode(0))
            file.close()
            file = open('testData/vuln/code%s.c'%str(i), 'w')
            file.write(gen.genCode(1))
            file.close()
        print("Generating CNN test data")
        print("Generating data for non-vulnerable codes")
        save("testData","clean")
        print("Generating data for vulnerable codes")
        save("testData","vuln")
        print("Data generation complete !")
    else:
        if not os.path.isdir('testData/clean'):
            print("Non-vulnerable test data not found, generating data...")
            os.mkdir('testData/clean')
            print("Generating codes")
            for i in tqdm(range(file_length*test_length)):
                file = open('testData/clean/code%s.c'%str(i), 'w')
                file.write(gen.genCode(0))
                file.close()
            print("Generating CNN test data")
            save("testData","clean")
            print("Data generation complete !")
        if not os.path.isdir('testData/vuln'):
            print("Vulnerable test data not found, generating data...")
            os.mkdir('testData/vuln')
            print("Generating codes")
            for i in tqdm(range(file_length*test_length)):
                file = open('testData/vuln/code%s.c'%str(i), 'w')
                file.write(gen.genCode(1))
                file.close()
            print("Generating CNN test data")
            save("testData","vuln")
            print("Data generation complete !")
    print("Data folders found")
    
        
    



checkInstallation()
trainwithfit()

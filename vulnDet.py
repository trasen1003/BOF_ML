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
import gensim.models
from tensorflow.keras import regularizers
from sklearn import metrics
import talos

train_length = 10
test_length = 10
file_length = 50
context_size = 50
batch_size = 20
vec_length = 100

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
        #print(index)
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
            #if(self.folder=="testData"):
                #vuln = 1
            #print("index : ",index,"i : ",i,"batch size : ",batch_size, "vuln len : ",len(vuln_data))
            if(vuln):
                x.append(vuln_data[math.floor(i/file_length)][i%file_length])
                y.append([0,1])
            else:
                x.append(clean_data[math.floor(i/file_length)][i%file_length])
                y.append([1,0])
        x = keras.preprocessing.sequence.pad_sequences(x, padding='post', dtype=float, maxlen=1500)
        y = np.array(y)
        #if self.folder == "testData":
            #print(y)
        return (x, y)

    def __init__(self, folder):
        self.folder = folder
        if (folder=="trainData"):
            self.len = math.floor(file_length*train_length/batch_size)
        else:
            self.len = math.floor(file_length*test_length/batch_size)

    def __len__(self):
        return self.len


#sentences = MyCorpus(files)
#model = gensim.models.Word2Vec(sentences=sentences, max_final_vocab = 30)


dl_model = keras.Sequential(
    [
        layers.Conv1D(32, context_size, input_shape=(1500, vec_length),kernel_regularizer=regularizers.l1_l2(l1=0.01, l2=0.01)),
        layers.GlobalMaxPooling1D(data_format="channels_first"),
        layers.Dense(32,kernel_regularizer=regularizers.l1_l2(l1=0.01, l2=0.01)),
        layers.Dense(2,activation='softmax',kernel_regularizer = regularizers.l1_l2(l1=0.01, l2=0.01))
    ])

optimizer = tf.optimizers.Adam(learning_rate=0.001)
loss = keras.losses.BinaryCrossentropy()


def runFile(path):
    modelex = copy.deepcopy(model)
    sentences = extract_tokens(path)
    modelex.build_vocab([sentences], update=True , trim_rule = ak_rule)
    modelex.train([sentences], total_examples=1, epochs=1)
    x = modelex.wv[sentences]  
    x = keras.preprocessing.sequence.pad_sequences([x], padding='post', dtype=float, maxlen=1500)
    y_pred = dl_model(x)



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
    model = gensim.models.Word2Vec(sentences=sentences, max_final_vocab = 100, vector_size = vec_length)
    x_vals, y_vals, labels = reduce_dimensions(model)
    name = categorie + "_" + vulnType + ".png"
    plot_with_matplotlib(x_vals, y_vals, labels,name)

    for index, word in enumerate(model.wv.index_to_key):
        if index == 100:
            break
        print(f"word #{index}/{len(model.wv.index_to_key)} is {word}")
    print("done")
    l = len(sentences)
    print("Saving CNN training data")
    for i in tqdm(range(l//file_length)):
        file = open(categorie + '/' + vulnType +'/MIRl%s'%str(i), 'wb')
        liste = []
        for j in range(i,i+file_length):
            liste.append([])
            for k in range(len(sentences[j])):
                try:
                    liste[j-i].append(model.wv[sentences[j][k]])
                except Exception as e:
                    liste[j-i].append([0]*vec_length)
        pickle.dump(liste, file)
        file.close()
#print("saving ...")
#save("clean")
#save("vuln")

#logs for tensorboard
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

def trainwithfit(lr,reg_coef):

    dl_model = keras.Sequential(
        [
            layers.Conv1D(32, context_size, input_shape=(1500, vec_length),kernel_regularizer=regularizers.l1_l2(l1=reg_coef, l2=reg_coef)),
            layers.GlobalMaxPooling1D(data_format="channels_first"),
            layers.Dense(32,kernel_regularizer=regularizers.l1_l2(l1=reg_coef, l2=reg_coef)),
            layers.Dense(2,activation='softmax',kernel_regularizer = regularizers.l1_l2(l1=reg_coef, l2=reg_coef))
        ])

    dl_model.compile(
        optimizer = tf.optimizers.Adam(learning_rate=lr),
        loss='binary_crossentropy',
        metrics=['binary_accuracy'],
    )

    generatorTrain = MyDataset("trainData")
    history = dl_model.fit(
        x=generatorTrain,
        verbose=2,
        epochs=2,
        callbacks=[tensorboard_callback]
    )

    generatorTest = MyDataset("testData")
    res = dl_model.evaluate(
        x=generatorTest,
    )
    return (dl_model,res)

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


def runMIR(path):
    MIR = pickle.load(open(path,'rb'))
    MIR = keras.preprocessing.sequence.pad_sequences(MIR, padding='post', dtype=float, maxlen=1500)
    return dl_model(MIR)


    
        
    
### 2D result representation ###

from sklearn.decomposition import IncrementalPCA    # inital reduction
from sklearn.manifold import TSNE                   # final reduction
import numpy as np                                  # array handling
import matplotlib.pyplot as plt


def reduce_dimensions(model):
    num_dimensions = 2  # final num dimensions (2D, 3D, etc)

    # extract the words & their vectors, as numpy arrays
    vectors = np.asarray(model.wv.vectors)
    labels = np.asarray(model.wv.index_to_key)  # fixed-width numpy strings

    # reduce using t-SNE
    tsne = TSNE(n_components=num_dimensions, random_state=0)
    vectors = tsne.fit_transform(vectors)

    x_vals = [v[0] for v in vectors]
    y_vals = [v[1] for v in vectors]
    return x_vals, y_vals, labels


def plot_with_matplotlib(x_vals, y_vals, labels,name):
    import matplotlib.pyplot as plt
    import random

    random.seed(0)

    plt.figure(figsize=(12, 12))
    plt.scatter(x_vals, y_vals)

    indices = list(range(len(labels)))
    #selected_indices = random.sample(indices, 100)
    selected_indices = indices
    for i in selected_indices:
        plt.annotate(labels[i], (x_vals[i], y_vals[i]))
    print(" ___ saving plot ___")
    plt.savefig(name)




checkInstallation()
def try_hyperparam():
    param = [10,1,0.5,0.1,0.05,0.01,0.005,0.001,0.0005,0.0001,0.00005,0.00001, 10**(-6),10**(-7)]
    res = []
    for reg in param:
        res.append(trainwithfit(0.01,reg)[1])
    print(res)
    plt.xlabel("regularization coefficient")
    plt.ylabel("validation accuracy")
    plt.xscale('log')
    plt.plot(param,res)
    plt.show()

dl_model,res = trainwithfit(0.01,0.01)


vulns = tf.concat([runMIR("./testData/vuln/MIRl" + str(i)) for i in range(0,10)],0)
cleans = tf.concat([runMIR("./testData/clean/MIRl" + str(i)) for i in range(0,10)],0)

y = [0]*len(vulns) + [1]*len(cleans)
scores  = tf.concat([vulns[:,0],cleans[:,0]],0)
fpr, tpr, thresholds = metrics.roc_curve(y, scores)
#print(fpr,tpr,thresholds)
y_pred = []
for elt in scores:
    if elt > 0.5:
        y_pred.append(1)
    else:
        y_pred.append(0)
print("recall : ", metrics.recall_score(y,y_pred))
print("precision : ", metrics.precision_score(y,y_pred))
print("f1_score : ", metrics.f1_score(y,y_pred))
plt.plot(fpr,tpr)
plt.xlabel("false positive rate")
plt.ylabel("true positive rate")
plt.show()

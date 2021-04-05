import copy
import pygments
from pygments.token import Token
from pygments import lexers, highlight
import os
import gensim.models


#tokens form file
def extract_tokens(filename):
    f = open(filename,'rb')
    code_str = f.read().decode(encoding = "UTF-8", errors ='replace')
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
        lexer = lexers.get_lexer_by_name('cpp')
        tokens = pygments.lex(code_str,lexer)
        process_tokens(tokens)
        return names


#files to learn word2vec on
dir_name = "train"
files = []
for elt in os.listdir("./" + dir_name):
    files.append("./" + dir_name + "/" + elt)



class MyCorpus:
    """An iterator that yields sentences (lists of str)."""
    def __init__(self,files):
        self.files = files

    def __iter__(self):
        for code in self.files:
            tokens = extract_tokens(code)
            if tokens != []:
                yield tokens


sentences = MyCorpus(files)
if os.path.isfile("./saved_model"):
    model = gensim.models.Word2Vec.load("./saved_model")
else:
    model = gensim.models.Word2Vec(min_count=1,sentences=sentences)
    model.save("./saved_model")

model_cp = copy.deepcopy(model)

#print(model.wv.most_similar("print",topn = 10))
for index, word in enumerate(model.wv.index_to_key):
    if index ==10:
        break
    print(f"word #{index}/{len(model.wv.index_to_key)} is {word}")
print("done")

for elt in os.listdir("./test") :
    print("processing : ", elt)
    sentences = MyCorpus(["./test/" + elt]) 
    #print("before : ",len(model.wv))
    model.build_vocab(list(sentences), update=True)
    model.train([[sentences]], total_examples=1, epochs=1)
    #print("after : ",len(model.wv))
#word2vec ready to process elt at this point
    model = copy.deepcopy(model_cp)


### 2D result representation ###

from sklearn.decomposition import IncrementalPCA    # inital reduction
from sklearn.manifold import TSNE                   # final reduction
import numpy as np                                  # array handling


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


x_vals, y_vals, labels = reduce_dimensions(model)

def plot_with_plotly(x_vals, y_vals, labels, plot_in_notebook=True):
    from plotly.offline import init_notebook_mode, iplot, plot
    import plotly.graph_objs as go

    trace = go.Scatter(x=x_vals, y=y_vals, mode='text', text=labels)
    data = [trace]

    if plot_in_notebook:
        init_notebook_mode(connected=True)
        iplot(data, filename='word-embedding-plot')
    else:
        plot(data, filename='word-embedding-plot.html')


def plot_with_matplotlib(x_vals, y_vals, labels):
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
    plt.show()

try:
    get_ipython()
except Exception:
    plot_function = plot_with_matplotlib
else:
    plot_function = plot_with_plotly

plot_function(x_vals, y_vals, labels)

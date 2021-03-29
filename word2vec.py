import pygments
from pygments.token import Token
from pygments import lexers, highlight
import os


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
        lexer = lexers.get_lexer_by_name('cpp')
        tokens = pygments.lex(code_str,lexer)
        process_tokens(tokens)
        return names


#files to learn word2vec on
files = []
for elt in os.listdir("./samples"):
    files.append("./samples/" + elt)


class MyCorpus:
    """An iterator that yields sentences (lists of str)."""

    def __iter__(self):
        for code in files:
            tokens = extract_tokens(code)
            if tokens != []:
                yield tokens

import gensim.models

sentences = MyCorpus()
model = gensim.models.Word2Vec(sentences=sentences)

for index, word in enumerate(model.wv.index_to_key):
    if index == 10:
        break
    print(f"word #{index}/{len(model.wv.index_to_key)} is {word}")
print("done")



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
    selected_indices = random.sample(indices, 100)
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

from collections import deque
import pydot
import os

def parser(text):
    end = 0
    beginning = 0
    for i in range(len(text)):
        if text[i] == ')':
            end = i
        elif text[i] == ',':
            beginning = i + 1
    return text[beginning:end]

def tri_topo(target,l_adja):
    dist = {target : 0}
    deja_vu = [target]
    pile = []
    res = []
    pile.append(target)
    while 1:
        try:
            s = pile.pop()
        except IndexError:
            break
        end = True
        for elt in l_adja[s]:
            if not(elt in deja_vu):
                if end == True:
                    pile.append(s)
                    end = False
                pile.append(elt)
                deja_vu.append(elt)
                #dist[elt] = dist[s] + 1
        if end == True:
            res.append(s)
    return res



def slice(path_to_pdg):
    graph = pydot.graph_from_dot_file(path_to_pdg)[0]
    l_adja = {}
    for elt in graph.get_node_list():
        l_adja[elt.get_name()] = []
    for elt in graph.get_edge_list():
        l_adja[elt.get_destination()].append(elt.get_source())
    sorted_list = tri_topo("\"1000128\"",l_adja)
    for item in sorted_list:
        print(parser(graph.get_node(item)[0].obj_dict['attributes']['label']))




# in_path = "./input/"
#out_path = "./output/"
#os.system("joern-parse " + in_path + "
#joern-export --repr pdg --out " + out_path)
slice("./outdir/1-pdg.dot")






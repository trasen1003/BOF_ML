from collections import deque
import pydot

def parser(text):
    end = 0
    beginning = 0
    for i in range(len(text)):
        if text[i] == ')':
            end = i
        elif text[i] == ',':
            beginning = i + 1
    return text[beginning:end]

def djikstra_graph(target,l_adja):
    dist = {target : 0}
    deja_vu = [target]
    fifo = deque()
    fifo.append(target)
    while 1:
        try:
            s = fifo.popleft()
        except IndexError:
            break
        for elt in l_adja[s]:
            if not(elt in deja_vu):
                fifo.append(elt)
                deja_vu.append(elt)
                dist[elt] = dist[s] + 1
    return dist


def slice(path_to_pdg):
    graph = pydot.graph_from_dot_file(path_to_pdg)[0]
    l_adja = {}
    for elt in graph.get_node_list():
        l_adja[elt.get_name()] = []
    for elt in graph.get_edge_list():
        l_adja[elt.get_destination()].append(elt.get_source())
    d_graph = djikstra_graph("\"1000154\"",l_adja)
    sorted_list = sorted(d_graph.items(), key=lambda x:x[1])
    sorted_list.reverse()
    for item in sorted_list:
        print(parser(graph.get_node(item[0])[0].obj_dict['attributes']['label']))



slice("./../outdir/0-pdg.dot")






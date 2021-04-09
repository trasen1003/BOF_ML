import pickle
import struct
import sys
import random

a = [random.random() for i in range(10000)]
print(sys.getsizeof(a))

f = open("/tmp/store_pickle",'wb')
pickle.dump(a,f)
f.close()
f = open("/tmp/store_string",'w')
s = "/".join(str(a))
f.write(s)
f.close()
f = open("/tmp/store_packed",'wb')
f.write(struct.pack(b'f'*len(a),*a)) 


import os
import pandas as pd
from glob import glob

df = pd.read_csv('rename.csv').set_index('sample')

lkup = df.to_dict()['txt_idat']

for fname in glob("*.idat"):
    print(fname)
    for k, v in lkup.items():
        if k + "_" in fname:
            newname = fname.replace(k, v)
            print("->", newname, f"({k})")
            os.rename(fname, newname)


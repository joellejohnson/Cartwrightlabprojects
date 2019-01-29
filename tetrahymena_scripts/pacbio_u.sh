import pandas as pd
import matplotlib
matplotlib.use('Agg')
from matplotlib import pyplot as plt
import scipy
import numpy as np

df=pd.read_csv("pacbio_mm_uAF45_3852_3.coverage",header=None, sep="\t", names=['contig', 
'position', 'depth'])
#print(df)

my_figure = df.plot(x='position', y='depth')
#axes = plt.gca()
#axes.set_xlim([0,None])
#axes.set_ylim([0,200])
fig = my_figure.get_figure()
fig.savefig('Pacbio_uAF45_3852_3.png')
#plt.show()

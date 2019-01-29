import pandas as pd
import matplotlib
matplotlib.use('Agg')
from matplotlib import pyplot as plt
import seaborn as sns
df = pd.read_csv('Anc_ultra_3852_10_AF45.txt',sep=" ",index_col=False, header=None, 
names=['Ancestor'], engine=
'python')

#df = df.iloc[4:]
#df.head()
#df['Ancestor']

df = df[~df['Ancestor'].astype(str).str.startswith('VN')]
df = df[~df['Ancestor'].astype(str).str.startswith('SN')]
df = df[~df['Ancestor'].astype(str).str.startswith('ID')]
df = df[~df['Ancestor'].astype(str).str.startswith('ID')]
df = df[df['Ancestor'].astype(str).str.startswith('RG')]


df['Ancestor_split'] = df['Ancestor'].str.split(':')
df['Ancestor_split_last'] = df['Ancestor_split'].str[-1]
#print(df)
#df2 = df.iloc[10:]
x = df['Ancestor_split_last'].value_counts()
#print(x)
my_figure = sns.countplot(x='Ancestor_split_last', hue=None, data=df) #no y input needed, counts 
occurances for y axis
plt.xticks(rotation=45)
my_figure.tick_params(labelsize=5)
#my_figure.savefig('Ancestorplot.png')
fig = my_figure.get_figure()
fig.savefig('Ancestorplot_ultra_AF39_3852_10.png')

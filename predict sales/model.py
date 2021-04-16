import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import pickle

data_wine = pd.read_csv(" E:\\quan\\data science\\github\hechuyengia\\machine-learning-deployment\\data_wine_after_processing1.csv")

data = data_wine.values

X=data[:,0:11] #lua chon cac bien doc lap
Y=data[:,12]# thuoc tinh can du doan

from sklearn import tree
clf = tree.DecisionTreeClassifier()

clf.fit(X, Y)

pickle.dump(clf, open('model.pkl','wb'))

model = pickle.load(open('model.pkl','rb'))
print(model.predict([[1, 1,1,1,1,1,1,1,1,1,1]]))
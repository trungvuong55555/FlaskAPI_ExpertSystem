import matplotlib.pyplot as plt
import pandas as pd
import pickle
from sklearn import tree
from sklearn.model_selection import KFold
from sklearn.model_selection import cross_val_score

#load data
data_wine= pd.read_csv("data_wine_ID3_convert.csv")

#lua chon du lieu
X_train= data_wine.iloc[:,:11]#lua chon cac thuoc tinh
Y_train= data_wine.iloc[:,-1]#lua chon nhan

#khoi tao model
clf=tree.DecisionTreeClassifier(criterion="entropy")

#do du lieu vao cho may no hoc
clf.fit(X_train,Y_train)

#kiem tra do chinh xac trong qua trinh hoc
kfold=KFold(n_splits=5)
scores=cross_val_score(clf,X_train,Y_train,cv=kfold)
real_scores=scores.mean()*100
print("Accuracy of this model ID3: ",real_scores)


#xuat model ra dang hinh anh
fn= X_train.columns
fn= list(fn)
cn= ['low','medium','high','best']
fig, axes = plt.subplots(nrows = 1,ncols = 1,figsize = (9,9), dpi=300)
tree.plot_tree(clf, feature_names=fn, class_names=cn,filled=True)
fig.savefig('ID3_model.png')

#dump cai model lai thanh pkl file
pickle.dump(clf, open('modelID3.pkl','wb'))

#unpklfile
model = pickle.load(open('modelID3.pkl','rb'))

print(model.predict([[0, 1,1,1,1,1,1,1,1,1,1]]))









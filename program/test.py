import pandas as pd
import pickle
from sklearn import tree


#load data
data_wine= pd.read_csv("data_wine_ID3_convert.csv")

#lua chon du lieu
X_train= data_wine.iloc[:,:11]#lua chon cac thuoc tinh
Y_train= data_wine.iloc[:,-1]#lua chon nhan

#khoi tao model
clf=tree.DecisionTreeClassifier(criterion="entropy")

#do du lieu vao cho may no hoc
clf.fit(X_train,Y_train)


pickle.dump(clf, open('modelID3.pkl','wb'))

#unpklfile
model = pickle.load(open('modelID3.pkl','rb'))

a=model.predict([[0, 1,1,1,1,1,1,1,1,1,1]])
a= str(a)
print(type(a))
import requests

url = 'http://localhost:5000/results'
r = requests.post(url,json={'type':5, 'fixed acidity':10, 'volatile acidity':10,'citric acid':15,'residual sugar':20,'chlorides':25,'free sulfur dioxide':30,'total sulfur dioxide':35,'density':40,'pH':45,'sulphates':50,'alcohol':55})

#print(r.json())
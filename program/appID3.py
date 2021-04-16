from flask import Flask, request, render_template
import pickle

app = Flask(__name__)#khoi tao flask
model = pickle.load(open('modelID3.pkl', 'rb'))#unpicke model

@app.route('/',methods =["GET", "POST"])
def home():
    if request.method == "POST":
        #lay gia tri tu form
        one= request.form.get("a0")
        two= request.form.get("a1")
        three = request.form.get("a2")
        four = request.form.get("a3")
        five = request.form.get("a4")
        six = request.form.get("a5")
        seven = request.form.get("a6")
        eight = request.form.get("a7")
        nine = request.form.get("a8")
        ten = request.form.get("a9")
        eleven = request.form.get("a10")

        #ep kieu du lieu ve int
        one= int(one)
        two= int(two)
        three= int(three)
        four= int(four)
        five= int(five)
        six= int(six)
        seven= int(seven)
        eight= int(eight)
        nine= int(nine)
        ten= int(ten)
        eleven = int(eleven)

        #dua ve dang vector
        input_value= [one,two,three,four,five,six,seven,eight,nine,ten,eleven]

        #dua ra ve du doan du lieu
        prediction = model.predict([input_value])
        prediction= str(prediction) #ep kieu du lieu ve dang string de co the xuat ra duoc man hinh

        return "quality of wine is    :     "+ prediction;
    return render_template('index.html')

if __name__ == "__main__":
    app.run(debug=True)



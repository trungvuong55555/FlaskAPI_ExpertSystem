from flask import Flask, request, render_template
import csv

app = Flask(__name__)

@app.route("/")
def readcsv():
    with open('Adrress.csv') as csv_file:
        data= csv.reader(csv_file)
        #firt_line= True
        places=[]
        for row in data:
            #if not firt_line:
            places.append({
                    "name: ": row[0],
                    "address: ": row[1]}
            )
            #else:
                #firt_line=False
    return render_template("demo.html",places= places)

if __name__ == "__main__":
    app.run(debug=True)
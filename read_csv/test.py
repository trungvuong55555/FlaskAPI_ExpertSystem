import pandas as pd
import csv

csv_file= open("Adrress.csv","r")


data = csv.reader(csv_file)
    # firt_line= True
places = []
for row in data:
        # if not firt_line:
    places.append({
            "name: ": row[0],
            "address: ": row[1]}
        )

csv_file.close()

print(places[3])
import json,sys,argparse

path = "/home/diegofes/.config/qtile/"
    

with open(path+"config.json","r") as jsonFile:
    data = json.load(jsonFile)

    theme = data["theme"] 
    print(theme)


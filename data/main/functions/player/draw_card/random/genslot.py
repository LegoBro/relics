#!/usr/bin/env python3


import yaml
import os


def createFolder(folder):
    try:
        os.makedirs(folder)
    except:
        #print("Problem creating folder.  Most likely it's a duplicate")
        pass

def recursiveCreateFolder(folder):
    folderList = folder.split("/")
    currentDepth = "."
    for x in range(0,len(folderList)):
        currentDepth = currentDepth + "/" + folderList[x]
        createFolder(currentDepth)

def readYaml(file):
    try:
        with open(file, 'r') as stream:
            try:
                return yaml.safe_load(stream)
            except yaml.YAMLError as exc:
                print(exc)

    except:
        print("A file reading error has occured")

def writeFunction(path,data):
    try:
        file = open(path + ".mcfunction","w")
        file.write(data)
        file.close()
        return True
    except:
        print("failure")
        return False

def listFolder(path):
    return os.listdir(path)


for slot in range(0,27):
    file = "## Slot for card"
    file += f'\ndata modify block 0 0 0 Items[{{Slot:0b}}] set from block ~ ~-2 ~ Items[{{Slot:{slot}b}}]'
    file += f'\nitem replace block ~ ~-2 ~ container.{slot} with air'
    file += "\ntag @s remove redraw"
    writeFunction(f"./{slot}",file)

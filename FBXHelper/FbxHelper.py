from pymel import *
from pymel.core import *
from maya.cmds import *
from shutil import *
from pymel.core.nodetypes import *
import subprocess

loadPlugin("fbxmaya") # LOAD PLUGIN

filepathToFbxExe = r"C:\Project_Erebus\FBXToFile\x64\Debug\FBXToFile.exe"
selection = False

def browsePressed(*args):
       try:          
           filePath = fileDialog2(fileFilter="*.fbx")
           textField("browseField", edit = True, text=filePath[0]) #here we appends text to the field
       except:
           pass

def selectionPressed(*args):
    global selection
    try:
        if (selection == False):
           selection = True
           text("sel",edit=True, label = "Export_Selection")
       
        else:
           selection = False
           text("sel",edit=True, label = "Export_Scene(default)")
          
    except:
        pass

def exportFbx(*args):
    global selection
    global filepathToFbxExe
    try:
        filepath =  textField("browseField", query = True, text = True)
        if(len(filepath)>0):
            filepathBase = filepath.split('.', -1 )[0]
            filepathFolder = filepath.rsplit("/",1)[0]
            filepathFolder += "/"
            
            
            
            
            filepathFbx = filepathBase + ".fbx"
            print(filepathFolder)
   
            
            if(selection == False):
                mel.FBXExport(f=filepathFbx)
                subprocess.Popen([filepathToFbxExe,filepathFbx,filepathFolder])
       
            else:
                exportSelected(filepath, f=True, typ = "FBX export")
                subprocess.Popen([filepathToFbxExe,filepathFbx,filepathFolder])
       

    except:
       print("Maya says no")
       pass
           
        


def triangulate(*args):
    try:
        selected  = ls(tr=True, sl=True)
        for mesh in selected:
            print(mesh)
            polyTriangulate(mesh)
            
         
    except:
          print("Maya says no")
          pass

try:
    deleteUI(win)
except:
    pass
                
win = window(title="FbxHelper",width=400,height=200)
layout = columnLayout(adjustableColumn=True,rowSpacing =0)

TEST = text(label = "FBXFilePath",height = 20, bgc= (0.5,0.5,0.5) )
TextField= textField("browseField",width =200,height=30)


buttonBrowse = button(label='Browse',c = browsePressed,height = 40,bgc= (0.7,0.7,1))
boxSelection = text("sel",label = "Export_Scene(default)",height = 20, bgc= (0.5,0.5,0.5) )
boxSelection = checkBox (label = "Selection",cc = selectionPressed,height =40)
buttonTriangulate = button(label='Triangulate selected mesh', c = triangulate, bgc= (0.5,1,0.5),height = 40)
buttonExport = button(label="Export", c = exportFbx ,height=40,bgc= (1,0.5,0.5))


showWindow();  
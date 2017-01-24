import pymel.core as pm
import time
import pymel.core.datatypes as dt
import maya.mel as mel

class Keyframe:

    Scale = [1,1,1]
    translate = [0,0,0]
    rotation = [0,0,0]  
    time = 0   


def returnThis(this):
    return this

def GetJointKeyframes(jointName):
    
    pm.select(jointName)
      
    curr = first = pm.findKeyframe(jointName, which='first')
    pm.setCurrentTime(first)
        
    last = pm.findKeyframe(jointName, which='last')
    kc = pm.keyframe( jointName, sl=False, q=True, keyframeCount=True )/10 #THIS IS LOGICAL AND MAKES SENSE!
    
    #node.setKeyframe();
   
    print("\n")    
    if (kc>0):
        keyframeList = [] 
        
        while curr <= last:
            
            node = pm.PyNode(jointName)
            kf = Keyframe()
            kf.time = curr /24
            
            
            kf.Scale = node.getScale()
            kf.rotation = node.getRotation()
            kf.translation = node.getTranslation()
            
            print kf.Scale[0]
            
            print("SCALE: " + str(kf.Scale))

    
            keyframeList.append(kf)
            if curr==last:
                return keyframeList
          
            
            curr = pm.findKeyframe(jointName, time=curr, which='next')
            pm.setCurrentTime(curr)
            
            
            
    else:
        print("No Keyframes in this animation layer")     
   
            

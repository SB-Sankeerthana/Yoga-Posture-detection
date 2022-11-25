from unittest import result
from cvzone.PoseModule import PoseDetector
import cv2
import math

from sqlalchemy import true

img = cv2.imread("/Users/sbsankeerthana./Desktop/Yoga.jpeg",1)
cv2.imshow("Image", img)
cv2.waitKey(0)
cv2.destroyAllWindows()

cap = cv2.VideoCapture(0)
while True:
    cv2.waitKey(15000)
    ret,frame=cap.read()
    cap.release()
    cv2.imshow('frame',frame)
    cv2.waitKey(0)
    break

img = cv2.imread("/Users/sbsankeerthana./Desktop/Yoga.jpeg",1)
img =cv2.resize(img, (1080 , 1350))
detector = PoseDetector()
img = detector.findPose(img)
lmList, bboxInfo = detector.findPosition(img, bboxWithHands=False)
center = bboxInfo["center"]
cv2.circle(img, center, 5, (255, 0, 255), cv2.FILLED)

#print(bboxInfo)

cv2.imshow("Image", img)
cv2.waitKey(0)
img1=frame
#img1 = cv2.imread("/Users/sbsankeerthana./Desktop/Yoga2.jpeg",1)
#img1 =cv2.resize(img1, (1080 , 1350))
detector = PoseDetector()
img1 = detector.findPose(img1)
lmList1, bboxInfo = detector.findPosition(img, bboxWithHands=False)
#center = bboxInfo["center"]
#cv2.circle(img1, center, 5, (255, 0, 255), cv2.FILLED)
#print(bboxInfo)

cv2.imshow("Image", img1)
cv2.waitKey(0)
count=0
#for i in range(31):
    #if i == 26 or 25 or 23 or 22 or 21 or 18 or 16 or 15 or 14 or 13:
        #continue
    #x1=lmList[i+1][1]-lmList[i][1]
    #y1=lmList[i+1][2]-lmList[i][2]
    #x2=lmList[i+2][1]-lmList[i+1][1]
    #y2=lmList[i+2][2]-lmList[i+1][2]
    #x3=lmList1[i+1][1]-lmList1[i][1]
    #y3=lmList1[i+1][2]-lmList1[i][2]
    #x4=lmList1[i+2][1]-lmList1[i+1][1]
    #y4=lmList1[i+2][2]-lmList1[i+1][2]
    #r1=math.sqrt(x1*x1+y1*y1)
    #r2=math.sqrt(x2*x2+y2*y2)
    #r3=math.sqrt(x3*x3+y3*y3)
    #r4=math.sqrt(x4*x4+y4*y4)
    #if x1==0 :
        #m1=y1/0.0000001
    #else :
        #m1=y1/x1 
    #if x2==0 :
        #m2=y2/0.0000001
    #else :
        #m2=y2/x2    
    #if x3==0 :
        #m3=y3/0.0000001
    #else :
        #m3=y3/x3 
    #if x4==0 :
        #m4=y4/0.0000001
    #else :
        #m4=y4/x4 
    #theota1=math.atan((m1-m2)/(1+m1*m2))
    #theota2=math.atan((m3-m4)/(1+m3*m4))
    #print(theota1,theota2)
    #if(abs(theota1-theota2)>0.3):
        #count+=1
    #if(abs(r1-r3)>25 or abs(r2-r4)>25):
        #count+=1   
    #print(r1,r3,r2,r4)
def Anglebtw(s1,s2,s3):
    v1 = [lmList[s1][1]-lmList[s2][1],lmList[s1][2]-lmList[s2][2],lmList[s1][3]-lmList[s2][3]]
    v2 = [lmList[s2][1]-lmList[s3][1],lmList[s2][2]-lmList[s3][2],lmList[s2][3]-lmList[s3][3]]
    v1mag = math.sqrt(v1[0]*v1[0]+v1[1]*v1[1]+v1[2]*v1[2])
    v1norm = [v1[0]/v1mag , v1[1]/v1mag, v1[2]/v1mag] 
    v2mag = math.sqrt(v2[0]*v2[0]+v2[1]*v2[1]+v2[2]*v2[2])
    v2norm = [v2[0]/v2mag , v2[1]/v2mag, v2[2]/v2mag]
    res = v1norm[0]*v2norm[0] + v1norm[1]*v2norm[1] + v1norm[2]*v2norm[2]
    angle = math.acos(res)
    return angle
def Anglebtw1(s1,s2,s3):
    v1 = [lmList1[s1][1]-lmList1[s2][1],lmList1[s1][2]-lmList1[s2][2],lmList1[s1][3]-lmList1[s2][3]]
    v2 = [lmList1[s2][1]-lmList1[s3][1],lmList1[s2][2]-lmList1[s3][2],lmList1[s2][3]-lmList1[s3][3]]
    v1mag = math.sqrt(v1[0]*v1[0]+v1[1]*v1[1]+v1[2]*v1[2])
    v1norm = [v1[0]/v1mag , v1[1]/v1mag, v1[2]/v1mag] 
    v2mag = math.sqrt(v2[0]*v2[0]+v2[1]*v2[1]+v2[2]*v2[2])
    v2norm = [v2[0]/v2mag , v2[1]/v2mag, v2[2]/v2mag]
    res = v1norm[0]*v2norm[0] + v1norm[1]*v2norm[1] + v1norm[2]*v2norm[2]
    angle = math.acos(res)
    return angle    
a1= Anglebtw(16,14,12)
b1= Anglebtw1(16,14,12) 
a2= Anglebtw(15,13,11)
b2= Anglebtw1(15,13,11) 
a3= Anglebtw(23,25,27)
b3= Anglebtw1(23,25,27) 
a4= Anglebtw(24,26,28)
b4= Anglebtw1(24,26,28) 
a5= Anglebtw(12,24,26)
b5= Anglebtw1(12,24,26) 
a6= Anglebtw(11,23,25)
b6= Anglebtw1(11,23,25) 
a7= Anglebtw(14,12,24)
b7= Anglebtw1(14,12,24) 
a8= Anglebtw(13,11,23)
b8= Anglebtw1(13,11,23) 

A=[a1,a2,a3,a4,a5,a6,a7,a8]
B=[b1,b2,b3,b4,b5,b6,b7,b8]
sum_y=0
for i in A:
    sum_y += i
mean_y=sum_y/len(A)

rss=0
tss=0
for i in range(8):
    rss += ((A[i]-B[i])**2)
for i in range(8):
    tss += ((A[i]-mean_y)**2)  
output = 1 - rss/tss  
outcome= abs(output)*100
print (A,"****",B) 

count=0
for i in range(8):
    cal = A[i]-B[i]
    if cal <0.5:
        count +=3
    elif cal<0.8:
        count +=8
    elif cal<1.2:
        count +=12
    elif cal<1.8:
        count +=20
    else:
        count +=25            
if (100-count)<50:
    print(100-count,"%")
elif(100-count)>74:
    print(100-count,"%")
else:    
    print(outcome,"%")

if (100-count)<70:
    print("1. Bring your awareness to the center line of the body")
    print("2. Calm and steady breath")
    print("3. Practice near a wall or a chair")
    print("4. Come into a balancing pose with patience and awareness")
    print("5. Keep your gaze fixed.In yoga, this is called Drishti Beda and is a means for developing concentrated intention.")
    print("6. Weight distributed backward")
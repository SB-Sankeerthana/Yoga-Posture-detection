import cv2
from cvzone.PoseModule import PoseDetector
d1 = PoseDetector()
cap = cv2.VideoCapture(0)
while True:
    ret, img =cap.read()
    img = d1.findPose(img)
    lmlist, bboxInfo = d1.findPosition(img, bboxWithHands=True)
    cv2.imshow("Res",img)
    cv2.waitKey(0)
    break
    
cv2.destroyAllWindows()
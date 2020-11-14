import cv2
import numpy as np
import pafy
import time
from datetime import datetime


MODEL_MEAN_VALUES= (78.4263377603, 87.7689143744, 114.895847746)

age_list= ['(0, 2)', '(4, 6)', '(8, 12)', '(15, 20)', '(25, 32)', '(38, 43)', '(48,53)', '(60, 100)']

gender_list= ['Woman', 'Man']
 

age_net =cv2.dnn.readNetFromCaffe('./models/deploy_age.prototxt', './models/age_net.caffemodel')
    
gender_net= cv2.dnn.readNetFromCaffe('./models/deploy_gender.prototxt', './models/gender_net.caffemodel')
     


#urlof the video to predict Age and gender

#url= 'https://www.youtube.com/watch?v=c07IsbSNqfI&feature=youtu.be'

#vPafy= pafy.new(url)

#play= vPafy.getbest(preftype="mp4")

#cap= cv2.VideoCapture(play.url)
video_capture = cv2.VideoCapture(0)
 
#識別出人臉後要畫的邊框的顏色，RGB格式
color = (0, 255, 0)

font = cv2.FONT_HERSHEY_SIMPLEX

availableSec = 3 #
recSec = 0


while True:
    ret, frame = video_capture.read()
    face_cascade =cv2.CascadeClassifier('./data/haarcascade_frontalface_alt.xml')

    gray = cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
                  

    faces = face_cascade.detectMultiScale(gray,1.1, 5)

    if(len(faces)>0):
        print("Found {}faces".format(str(len(faces))))
        time.sleep(1)
        recSec+=1
        
        for faceRect in faces:  #單獨框出每一張人臉
            x, y, w, h = faceRect        
            cv2.rectangle(frame, (x - 10, y - 10), (x + w + 10, y + h + 10), color, 2)
            #cv2.rectangle(frame, (x, y), (x+w, y+h),(255, 255, 0), 2)

            #GetFace
            
            face_img = frame[y:y+h, h:h+w].copy()
            
            blob = cv2.dnn.blobFromImage(face_img, 1,(227, 227), MODEL_MEAN_VALUES, swapRB=False)
            
            #PredictGender
            
            gender_net.setInput(blob)
            
            gender_preds = gender_net.forward()
            
            gender =gender_list[gender_preds[0].argmax()]
            
            #print("Gender : " + gender)
            
            #PredictAge
            
            age_net.setInput(blob)
            
            age_preds = age_net.forward()
            
            age = age_list[age_preds[0].argmax()]
            
            #print("Age Range: " + age)
            
            #顯示影象
            overlay_text= "%s %s" % (gender, age)
                
            cv2.putText(frame, overlay_text + " recSec " + str(recSec) , (x, y),font, 1, (255, 255, 255), 2, cv2.LINE_AA)
            
    if len(faces) == 0: 
        print('No face detected')
        #離開時判斷停留多久，停留時間超過設定值才視為有效人數
        if (recSec > availableSec ):
            print('gender',gender)
            print('age',age)
            now = datetime.now()
            current_time = now.strftime("%Y-%m-%d %H:%M:%S.%f")[:-3]
            print("Current Time =", current_time)
            
        cv2.putText(frame, "No face detected ", (x, y), cv2.FONT_HERSHEY_TRIPLEX, 0.5,  (0,0,255), 1)        
        recSec = 0
         
      
    cv2.imshow("webcam", frame)        
    c = cv2.waitKey(10)
    if c & 0xFF == ord('q'):
        break   
    
#釋放攝像頭並銷燬所有視窗
video_capture.release()
cv2.destroyAllWindows() 

 

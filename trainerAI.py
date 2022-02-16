#!C:/Python27/python.exe
print "Content-type: text/html\n\n"
import cv2
import os
import cgi
form = cgi.FieldStorage()

if(form.getvalue("mat_num")):
    mat_num = form.getvalue("mat_num")
    # Check if folder exists
    if not os.path.exists(mat_num):
        os.makedirs(mat_num)

    faceCascade = cv2.CascadeClassifier('cv2/data/haarcascade_frontalface_default.xml')
    cam = cv2.VideoCapture(0)
    #cam.set(3,640)
    #cam.set(4,480)
    count = 0

    face_detector = cv2.CascadeClassifier('cv2/data/haarcascade_frontalface_alt2.xml')
    # For each person, enter one unique numeric face id
    face_id = 1

    while(True):
        ret, img = cam.read()
        main_img = img
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        faces = face_detector.detectMultiScale(gray)
        for (x,y,w,h) in faces:
            cv2.imwrite("./"+mat_num+"/"+"Users." + str(face_id) + '.' + str(count) + ".jpg", main_img)
            cv2.rectangle(img, (x,y), (x+w,y+h), (255,0,0), 2)
            count += 1
            # Save the captured image into the images directory
            #cv2.imwrite("./images/Users." + str(face_id) + '.' + str(user_id) + '.' + str(count) + ".jpg", gray[y:y+h,x:x+w])
            
        cv2.imshow('image', img)
        # Press Escape to end the program.
        k = cv2.waitKey(100) & 0xff
        if k < 30:
            break
        # Take 30 face samples and stop video. You may increase or decrease the number of
        # images. The more the better while training the model.
        elif count >= 10:
            break
    cam.release()
    cv2.destroyAllWindows()
    print "true"
    
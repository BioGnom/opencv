# Import the necessary libraries
import cv2

# Load the image
img = cv2.imread("image.jpg")

# Convert the image to grayscale
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

# Load the face detector
face_cascade = cv2.CascadeClassifier("haarcascade_frontalface_default.xml")

# Detect faces in the image
faces = face_cascade.detectMultiScale(gray, 1.3, 5)

# Iterate over the detected faces and draw a rectangle around each face
for (x,y,w,h) in faces:
    cv2.rectangle(img, (x,y), (x+w, y+h), (255,0,0), 2)

# Show the image with the detected faces
cv2.imshow("Faces", img)
cv2.waitKey(0)
cv2.destroyAllWindows()

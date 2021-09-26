clc
clear
cam = webcam(1);
while(1)
[rgbImage, storedColorMap] = snapshot(cam);
imshow(rgbImage)
end
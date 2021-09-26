cam = webcam(1);
figure
run jumma.m
u1= 0.1;
u2 = 0.99;
a1 = 0.1;
a2 = 1.0;
l1 = 0;
l2 = 1.0;
while(1)
    u1=load('h1.txt')
    hueThresholdLow=u1;
  
    u2=load('h2.txt')
    hueThresholdHigh=u2;
    
    a1=load('s1.txt')
    saturationThresholdLow=a1;
    
    a2=load('s2.txt')
    saturationThresholdHigh=a2;
    
    l1=load('v1.txt')
    valueThresholdLow=l1;
    
    l2=load('v2.txt')
    valueThresholdHigh=l2;
    
    [rgbImage, storedColorMap] = snapshot(cam);
    hsvImage = rgb2hsv(rgbImage);
    hImage = hsvImage(:,:,1);
    sImage = hsvImage(:,:,2);
    vImage = hsvImage(:,:,3);
    hueMask = (hImage>= hueThresholdLow) & (hImage<= hueThresholdHigh);
    saturationMask = (sImage >= saturationThresholdLow) & (sImage <= saturationThresholdHigh);
    valueMask = (vImage >= valueThresholdLow) & (vImage <= valueThresholdHigh);
    coloredObjectsMask = uint8(hueMask & saturationMask & valueMask);
    
    %RGB Image
    subplot(1,2,1)
    imshow(rgbImage)
    subplot(1,2,2);
    imshow(coloredObjectsMask, []);
    
    
end

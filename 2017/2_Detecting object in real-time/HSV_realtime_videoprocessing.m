clear 
cam = webcam(1);
figure

% Setting initial color values for blue side of rubic cube
% may differ depending on the lighting conditions in the environment
% use previous gui slider program to extract HSV values
hue_lb = 0.467391;
hue_hb = 0.695652;
sat_lb = 0.304348;
sat_hb = 1;
val_lb = 0.3696;
val_hb = 1;

%Main program:
while(1)
    
    %Reading the input image and converting it into hsv image
    [rgbImage, storedColorMap] = snapshot(cam);
    hsvImage = rgb2hsv(rgbImage);
    
    %Dividing HSV image into smaller parts
    hImage = hsvImage(:,:,1);
    sImage = hsvImage(:,:,2);
    vImage = hsvImage(:,:,3);
    
    %Segmentation according to the colors of rubic cube
    hueMask_b = (hImage >= hue_lb) & (hImage <= hue_hb);
    saturationMask_b = (sImage >= sat_lb) & (sImage <= sat_hb);
    valueMask_b = (vImage >= val_lb) & (vImage <= val_hb);
    coloredObjectsMask_b = uint8(hueMask_b & saturationMask_b & valueMask_b);
    
    %Display RGB Image and segmented images of blue side
    subplot(2,2,1)
    imshow(rgbImage)
    subplot(2,2,2);
    imshow(coloredObjectsMask_b, []);
    
    %Operation on the input blue  image
    BW_b = imbinarize(coloredObjectsMask_b);
    im_fill_b = imfill(BW_b, 'holes');  %Fills all the holes
    out_b = bwareafilt(im_fill_b,9); %operations have been performed on the image
    %value nine because nine square of rubic cube
    %change operation according to use-case
     
    
    %Displaying the output image
    imshow(out_b)
    subplot(2,2,3)
    
end
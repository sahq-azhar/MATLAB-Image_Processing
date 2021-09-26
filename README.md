<h1 align='center'> Image Processing Using MATLAB   </h1> <br>

This repository contains my image processing code. The codes are designed to recognise objects using HSV values from real-time video data.
The code is rather outdated. However, I am still publishing this for future reference and documentation. I accomplished this in 2017-2018, and there have been many improvements and optimizations since then. The new approach will be updated in the 2021 folder.




## Issues

#### Slider Callback Function
[jumma.m](https://github.com/sahq-azhar/MATLAB-Image_Processing/blob/0d2d4a87f790af99a2afabff9eb14113adf14b26/2017/1_Getting%20HSV%20values%20from%20slider-GUI/jumma.m#L84-L88)
```matlab
h1=get(handles.slider1,'value');
set(handles.edit1,'string',h1);
%h1 = get(hObject,'Value')
% print h1
save ('h1.txt','h1','-ascii')
```
This code retrieves values from the GUI Slider and passes them to the corresponding HSV values in the link.m file. <br>
save function saves the value of the slider in a .txt file that can be called in the other .m file <br>
This function is slow and time-consuming; any alternative would be greatly appreciated.







**⭐ The repo**



### Eat, Sleep, CODE, Repeat!


[![View MATLAB-Image Processing on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://in.mathworks.com/matlabcentral/fileexchange/99884-matlab-image-processing)



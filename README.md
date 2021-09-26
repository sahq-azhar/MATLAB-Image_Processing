<h1 align='center'> Image Processing Using MATLAB   </h1> <br>

This repository contains image processing code. The codes are designed to recognise objects using HSV values from real-time video data.
The code is rather outdated. However, I am still publishing this for future reference and documentation. I accomplished this in 2017-2018, and there have been many improvements and optimizations since then. The new approach will be updated in the 2021 folder.

[![View MATLAB-Image Processing on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://in.mathworks.com/matlabcentral/fileexchange/99884-matlab-image-processing)


<table>
  <tr>
<td><img src="https://i.ibb.co/FzQd9qV/Capture-pink.jpg" alt="Capture-pink" border="0"  width="800">


</tr>
</table>
<br>

## Issues
These functions are slow and time-consuming; any alternative would be greatly appreciated. [#1]( https://github.com/sahq-azhar/MATLAB-Image_Processing/issues/1)
#### Slider Callback Function for saving in [jumma.m](https://github.com/sahq-azhar/MATLAB-Image_Processing/blob/0d2d4a87f790af99a2afabff9eb14113adf14b26/2017/1_Getting%20HSV%20values%20from%20slider-GUI/jumma.m#L84-L88)

The following code retrieves values from the GUI Slider and passes them to the corresponding HSV values in the link.m file. <br>
save function saves the value of the slider in a .txt file that can be called in the other .m file <br>
```matlab
h1=get(handles.slider1,'value');
set(handles.edit1,'string',h1);
%h1 = get(hObject,'Value')
% print h1
save ('h1.txt','h1','-ascii')
```



#### Load in [link.m](https://github.com/sahq-azhar/MATLAB-Image_Processing/blob/210f26366a2d4df259afa53062949875da368dc5/2017/1_Getting%20HSV%20values%20from%20slider-GUI/link.m#L11-L12)
This takes the value from the.txt file into the appropriate variable.
```matlab
u1=load('h1.txt')
hueThresholdLow=u1;
```





----------------------------------------------

**⭐ The repo**



### Eat, Sleep, CODE, Repeat!






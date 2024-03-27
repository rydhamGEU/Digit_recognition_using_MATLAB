[file,path]=uigetfile('*.*','Select Input image');
filepath=strcat(path,file);
img=imread(filepath);
figure 
imshow(img) 
label=classify(net, img);
title(['Digit is ' char(label)])

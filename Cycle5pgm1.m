% CYCLE - 5
% Perform histogram calculation and operations of image.
% a) Standard MATLAB function.

%cleaning
clc;
clear all;
close all;

%Reading an image
img1 =imread("C:\Users\KUTTUSA\Pictures\Matlab\images\rose.jpeg");
i =rgb2gray(img1);
J =histeq(i);

subplot(2,2,1);
imshow(i);

subplot(2,2,2);
imshow(i);

subplot(2,2,3);
imshow(J);

subplot(2,2,4);
imhist(J,64);

%Perform standard MATLAB function.
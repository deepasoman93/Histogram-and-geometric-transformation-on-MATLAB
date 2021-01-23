% CYCLE - 6
% Perform following geometric transformation of image.
% b) To perform scaling of an image in MATLAB.

%cleaning
clc;
clear all;
close all;

%Reading an image
img1 =imread("C:\Users\KUTTUSA\Pictures\Matlab\images\uni.jpg");

%Original image
subplot(2,2,1);
imshow(img1);
title("Original Image");
j =imresize(img1,[400,400]);

subplot(2,2,2);
imshow(j);
title("Resized Image");

% Scaling of an image in MATLAB obtained.
% CYCLE - 6
% Perform following geometric transformation of image.
% c) To perform rotation of an image in MATLAB.

%cleaning
clc;
clear all;
close all;

%Reading an image
img1 =imread("C:\Users\KUTTUSA\Pictures\Matlab\images\bri.jpg");
i =imrotate(img1,[45]);

%Original image
subplot(3,1,1);
imshow(img1);
title("Original Image");

subplot(3,1,2);
imshow(i);
title("Rotate Image");

% Rotation of an image in MATLAB obtained.
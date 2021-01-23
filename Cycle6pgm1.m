% CYCLE - 6
% Perform following geometric transformation of image.
% a) Translation of an image in MATLAB.

%cleaning
clc;
clear all;
close all;

%Reading an image
img1 =imread("C:\Users\KUTTUSA\Pictures\Matlab\images\pri.jpg");
[row, col] =size(img1);
tx =input("Enter the translation parameters tx=");
ty =input("Enter the translation parameters ty=");

for i=1:row-tx
    for j=1:col-ty
        T(i+tx,j+ty)=img1(i,j);
    end
end

imshow(img1),figure,imshow(T);

% Translation of an image in MATLAB obtained.
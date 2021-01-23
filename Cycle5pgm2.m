% CYCLE - 5
% Perform histogram calculation and operations of image.
% b) Histogram without using Standard MATLAB function.

%cleaning
clc;
clear all;
close all;

%Reading an image
img1 =imread("C:\Users\KUTTUSA\Pictures\Matlab\images\cake1.jpg");
I =double(img1);
mv =max(max(I));
[row, col] =size(I);
c =row*col;
h =zeros(1,300);
z =zeros(1,300);

for n=1:row
    for m=1:col
        if I(n,m)==0
            I(n,m)=1;
        end
    end
end

for n=1:row
    for m=1:col
        t=I(n,m);
        h(t)=h(t)+1;
    end
end

pdf =h/c;
cdf(1)= pdf(1);

for x=2:255
    cdf(x)=pdf(x)+cdf(x-1);
end

new =round(cdf*255);
new =new+1;

for p=1:row
    for q=1:col
        temp=I(p,q);
        b(p,q)=new(temp);
        t=b(p,q);
        z(t)=z(t)+1;
    end
end

b=b-1;

subplot(2,2,1);
imshow(uint8(I));
title("Image1");

subplot(2,2,2);
bar(h);
title("Histogram of original image");


subplot(2,2,3);
imshow(uint8(b));
title("Image2");


subplot(2,2,4);
bar(z);
title("Histogram equalisation of image");

%Histogram without using standard MATLAB function obtained.


clear all;
close all;
clc;
b=imread("C:\Users\KUTTUSA\Pictures\Matlab\images\girl.jpg");
res=imresize(b,[256,256]);
s=size(b);
c=[];
d=[];
zoom=input('enter zooming factor');

for n=1:s(1,1)
    for p=1:zoom
        c=[c;b(n,:)];
    end
end


for m=1:s(1,2)
    for p=1:zoom
        d=[d,c(:,m)];
    end
end

%Original image
figure;
imshow(res);
title("Original Image(256,256)");

%Zoomed image
figure;
imshow(d);
title('Zoomed Image(512,512)');

% Zooming of an image in MATLAB obtained.
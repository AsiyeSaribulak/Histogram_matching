clc;clear all;
close all;
resim1=imread('D:\GoruntuIsleme\foto2.jpg');
% subplot(2,2,1);
% imshow(resim1);
resim2=imread('D:\GoruntuIsleme\foto3.jpg');
% subplot(2,2,2);
% imshow(resim2);
r1=resim1(:,:,1);g1=resim1(:,:,2);b1=resim1(:,:,3);
r2=resim2(:,:,1);g2=resim2(:,:,2);b2=resim2(:,:,3);
a=H_uydurma(r1,r2);
b=H_uydurma(g1,g2);
c=H_uydurma(b1,b2);
 subplot(2,2,1);
 imshow(resim1);title="orijinal fotoğraf";
 subplot(2,2,2);
 imshow(resim2);title="orijinal fotoğraf";
resim3=cat(3,a,b,c);
 subplot(2,2,3);
 imshow(resim3);title="Histogram Matching";



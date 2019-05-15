clear all
close all

r=imread('river1.jpg');
rg=rgb2gray(r);
w=fspecial('gaussian',[5 5],5);
im=imfilter(rg,w);



sobel_mask_x1=[2 1 0;1 0 -1;0 -1 -2];
sobel_mask_y1=[0 -1 -2;1 0 -1;2 1 0];  


sobel_mask_x2=[-1 0 1;-2 0 2;-1 0 1];
sobel_mask_y2=[-1 -2 -1;0 0 0;1 2 1];    

sobel_mask_x3=[-2 -1 0;-1 0 1;0 1 2];
sobel_mask_y3=[0 1 02;-1 0 1;-2 -1 0]; 

prewitt_mask_x4=[-1 -1 -1;0 0 0;1 1 1];
prewitt_mask_y4=[-1 0 1;-1 0 1;-1 0 1];

%sobel_mask_x3=[-5  0  5;-10 0 10;-5 0 5];
%sobel_mask_y3=[-5 -10 -5;0 0 0;5 10 5];  
%sobel_mask_x1=[-0.125 0 0.125;-0.25 0 0.25;-0.125 0 0.125];
%sobel_mask_y1=[-0.125 -0.25 -0.125;0 0 0;0.125 0.25 0.125]; 

sobel_Gx1=filter2(sobel_mask_x1,im);
sobel_Gy1=filter2(sobel_mask_y1,im);  

sobel_Gx2=filter2(sobel_mask_x2,im);
sobel_Gy2=filter2(sobel_mask_y2,im);  

sobel_Gx3=filter2(sobel_mask_x3,im);
sobel_Gy3=filter2(sobel_mask_y3,im);  

prewitt_Gx4=filter2(prewitt_mask_x4,im);
prewitt_Gy4=filter2(prewitt_mask_y4,im);  


sobel_sqrtG1=sqrt((sobel_Gx1.^2)+(sobel_Gy1.^2));
sobel_sqrtG2=sqrt((sobel_Gx2.^2)+(sobel_Gy2.^2));
sobel_sqrtG3=sqrt((sobel_Gx3.^2)+(sobel_Gy3.^2));
prewitt_sqrtG4=sqrt((prewitt_Gx4.^2)+(prewitt_Gy4.^2));

sobel_sqrtG_div5001=imdivide(sobel_sqrtG1,255);
sobel_sqrtG_div5002=imdivide(sobel_sqrtG2,255);
sobel_sqrtG_div5003=imdivide(sobel_sqrtG3,255);
prewitt_sqrtG_div5004=imdivide(prewitt_sqrtG4,255);

% b=edge(a);

imshow(sobel_sqrtG_div5001);
figure,imshow(sobel_sqrtG_div5002);
figure,imshow(sobel_sqrtG_div5003);
figure,imshow(prewitt_sqrtG_div5004);
figure,imshow(rg);
figure,imshow(im);
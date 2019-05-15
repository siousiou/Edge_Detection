clear;


a=imread('bridge.jpg');
a=im2double(a);
%(1) 
figure; 
subplot(1,3,1);imshow(a);title('input image'); 
h1 = fspecial('sobel'); 
MotionBlur1 = imfilter(a,h1); 
subplot(1,3,2);imshow(MotionBlur1);title('sobel-Motion Blurred Image '); 
h2 = fspecial('Laplacia',0); 
MotionBlur2 = imfilter(a,h2); 
subplot(1,3,3);imshow(MotionBlur2);title('Laplacia-Motion Blurred Image'); 
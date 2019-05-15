clear

a=imread('river.jpg'); 
a=im2double(a); 
%(1) 
figure; 
subplot(1,3,1);imshow(a);title('input image'); 
h1 = fspecial('prewitt'); 
MotionBlur1 = imfilter(a,h1); 
subplot(1,3,2);imshow(MotionBlur1);title('prewitt-Motion Blurred Image '); 
h2 = fspecial('Laplacia',0); 
MotionBlur2 = imfilter(a,h2); 
subplot(1,3,3);imshow(MotionBlur2);title('Laplacia-Motion Blurred Image'); 
%(2) 
% figure('name','直接?入算子?化?理','NumberTitle','Off'); 
% subplot(1,3,1);imshow(a);title('input image'); 
% dx=[-1 -2 -1;0 0 0;1 2 1]; 
% dy=[-1 0 1;-2 0 2;-1 0 1]; 
% d=(dx.^2+dy.^2).^0.5; 
% MotionBlur3= imfilter(a,d); 
% subplot(1,3,2);imshow(MotionBlur3);title('sobel-direct input-Motion Blurred Image '); 
% l=[0 -1 0;-1 4 -1;0 -1 0]; 
% MotionBlur4 = imfilter(a,l); 
% subplot(1,3,3);imshow(MotionBlur4);title('Laplacia-direct input-Motion Blurred Image'); 
% %3 
% a=imread('river.jpg'); 
% a=im2double(a); 
% figure; 
% %(1); 
% subplot(1,3,1);imshow(a);title('input image'); 
% L=[-1 -1 -1;-1 8 -1;-1 -1 -1]; 
% MotionBlur1 = imfilter(a,L); 
% subplot(1,3,2);imshow(MotionBlur1);title('?角?Laplacian算子'); 
% %(2) 
% MotionBlur2=MotionBlur1+a; 
% subplot(1,3,3);imshow(MotionBlur2);title('?加后?形'); 
% %(3) 
% figure; 
% subplot(2,3,1);imshow(a);title('input image'); 
% h1 = fspecial('sobel'); 
% h2 = imfilter(a,h1); 
% subplot(2,3,2);imshow(h2);title('sobel-Motion Blurred Image '); 
% MotionBlur3=imfilter(h2,[5 5]); 
% subplot(2,3,3);imshow(MotionBlur3);title('sobel-?域平均 '); 
% %(4,5,6) 
% MotionBlur4 = imsubtract(MotionBlur2,h2); 
% subplot(2,3,4);imshow(MotionBlur4);title('相乘?象 '); 
% MotionBlur5=MotionBlur4+a; 
% subplot(2,3,5);imshow(MotionBlur5);title('与原始??加后?形'); 
% MotionBlur6=imadjust(MotionBlur5,[],[],0.2); 
% subplot(2,3,6);imshow(MotionBlur6);title('?指??0.2的灰度??'); 
% %4 
% a1=imread('river.jpg'); 
% a=im2double(a1); 
% f=double(a1); 
% [m,n]=size(f); 
% for i=1:m 
% for j=1:n 
% if i==m 
% G(i,j)=G(i-1,j) ; 
% elseif j==n 
% G(i,j)=G(i,j-1); 
% else 
% G(i,j)=abs(f(i,j)-f(i+1,j+1))+abs(f(i+1,j)-f(i,j+1)); 
% end 
% end 
% end 
% Z=f; 
% figure; 
% for i=4:8 
% k=find(G>=i);Z(k)=255; 
% q=find(G<i);Z(q)=0; 
% subplot(2,3,1);imshow(a);title('input image'); 
% subplot(2,3,i-2);imshow(Z);title(['?限T?',num2str(i)]); 
% end;
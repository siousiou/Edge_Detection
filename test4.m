clear

b=imread('bridge.jpg'); 
b=rgb2gray(b);
b=b>110;
sq=[0 1 0 ; 1 1 1 ; 0 1 0];
be=imerode(b,sq);  %%侵蝕
b_int=b & ~be;     %%原圖加上~侵蝕
% imshow(b);
% figure,imshow(b_int);

bd=imdilate(b,sq);  %%膨脹
b_grad=bd & ~be;    %%膨脹加上~侵蝕

imshow(bd);
clear

b=imread('bridge.jpg'); 
b=rgb2gray(b);
b=b>110;
sq=[0 1 0 ; 1 1 1 ; 0 1 0];
be=imerode(b,sq);  %%�I�k
b_int=b & ~be;     %%��ϥ[�W~�I�k
% imshow(b);
% figure,imshow(b_int);

bd=imdilate(b,sq);  %%����
b_grad=bd & ~be;    %%���ȥ[�W~�I�k

imshow(bd);
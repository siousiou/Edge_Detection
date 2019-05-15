clear

r=imread('river1.jpg');
rg=rgb2gray(r);

sobel_mask_x1=[-0.125 0 0.125;-0.25 0 0.25;-0.125 0 0.125];
sobel_mask_y1=[-0.125 -0.25 -0.125;0 0 0;0.125 0.25 0.125];  %%�Ʀr�V�p�o�쪺��t����


sobel_mask_x2=[-1 0 1;-2 0 2;-1 0 1];
sobel_mask_y2=[-1 -2 -1;0 0 0;1 2 1];    %%sobel�򥻪��B�n


sobel_mask_x3=[-5  0  5;-10 0 10;-5 0 5];
sobel_mask_y3=[-5 -10 -5;0 0 0;5 10 5];  %%�Ʀr�V�j�o�쪺��t�V�h�V�ӽo

sobel_Gx1=filter2(sobel_mask_x1,rg);
sobel_Gy1=filter2(sobel_mask_y1,rg);  %%�p

sobel_Gx2=filter2(sobel_mask_x2,rg);
sobel_Gy2=filter2(sobel_mask_y2,rg);  %%���`

sobel_Gx3=filter2(sobel_mask_x3,rg);
sobel_Gy3=filter2(sobel_mask_y3,rg);  %%�j


sobel_sqrtG1=sqrt((sobel_Gx1.^2)+(sobel_Gy1.^2));
sobel_sqrtG2=sqrt((sobel_Gx2.^2)+(sobel_Gy2.^2));
sobel_sqrtG3=sqrt((sobel_Gx3.^2)+(sobel_Gy3.^2));

sobel_sqrtG_div5001=imdivide(sobel_sqrtG1,255);
sobel_sqrtG_div5002=imdivide(sobel_sqrtG2,255);
sobel_sqrtG_div5003=imdivide(sobel_sqrtG3,255);

% b=edge(a);

imshow(sobel_sqrtG_div5001*2.5);
figure,imshow(sobel_sqrtG_div5002);
figure,imshow(sobel_sqrtG_div5003);
figure,imshow(rg);
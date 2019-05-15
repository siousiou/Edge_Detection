clear
a=imread('river.jpg');
a1=a(:,:,1);
a2=a(:,:,2);
a3=a(:,:,3);
ga=rgb2gray(a);

f=fspecial('laplacian');
fga1=filter2(f,ga);
ea=edge(ga);
% fga1=filter2(f,a1);
% fga2=filter2(f,a2);
% fga3=filter2(f,a3);
 imshow(ea);
% subplot(1,3,1);imshow(fga1/200);title('Red laplacian');
% subplot(1,3,2);imshow(fga2/200);title('Geen laplacian');
% subplot(1,3,3);imshow(fga3/200);title('Blue laplacian');
% imshow(fga1/200),figure,imshow(fga2/200),figure,imshow(fga3/200)
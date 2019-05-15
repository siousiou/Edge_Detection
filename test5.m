clear

a=imread('bridge.jpg');
agr=rgb2gray(a);
ar=a(:,:,1);
ag=a(:,:,2);
ab=a(:,:,3);

agsubb=ag-ab;
subplot(1,2,1);imshow(agsubb*3);title('G-B');
subplot(1,2,2);imshow(a);title('Gray');
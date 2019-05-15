a_blue=imread('bridge_blue.jpg');
a_green=imread('bridge_green.jpg');

resulta=a_green-a_blue;
a=mean(resulta);
% b=std(resulta);
max_resulta=max(resulta);
% newa=resulta*255/174;


resultaa=resulta*3;
resultaaa=resulta*3+20;
% imhist(resulta),axis tight;
imhist(resultaa),axis tight;
% resultaaa=resulta*10;
max_resultaa=max(resultaa);
% newaa=resultaa*255/255;
% imshow(),figure,imshow();
%  imshow(resultaa);
imwrite(resulta,'strengthen_green_original.jpg');
imwrite(resultaa,'strengthen_green_add.jpg');
imwrite(resultaaa,'strengthen_green_multadd30.jpg');


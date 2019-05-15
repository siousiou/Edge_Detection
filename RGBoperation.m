img=imread('bridge.jpg');
img_r=img(:,:,1);
img_g=img(:,:,2);
img_b=img(:,:,3);

img_rsubg=img_r-img_g;
img_rsubb=img_r-img_b;

img_gsubr=img_g-img_r;
img_gsubb=img_g-img_b;

img_bsubr=img_b-img_r;
img_bsubg=img_b-img_g;



imshow(img_rsubg),figure,imshow(img_rsubb),figure,imshow(img_gsubr),figure,imshow(img_gsubb),figure,imshow(img_bsubb),figure,imshow(img_bsubg);
img_raddg=img_r+img_g;
img_raddb=img_r+img_b;

img_gaddr=img_g+img_r;
img_gaddb=img_g+img_b;

img_baddr=img_b+img_r;
img_baddg=img_b+img_g;

%imwrite(img_rsubg,'img_rsubg.jpg');
%imwrite(img_rsubb,'img_rsubb.jpg');
%imwrite(img_gsubr,'img_gsubr.jpg');
%imwrite(img_gsubb,'img_gsubb.jpg');
%imwrite(img_bsubr,'img_bsubr.jpg');
%imwrite(img_bsubg,'img_bsubg.jpg');
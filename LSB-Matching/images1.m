clear all;

train=zeros(400,24);
m=1;
for i=1:200
    image=imread(['./stego1/' num2str(i) '.jpg']);
    %image=imread('lena.tif');
    %image=rgb2gray(image);
    image=imresize(image,[256 256]);
    [h, w, d]=size(image);
    pic=image;
     B1 = bitget(pic,1)*2^0;
     B2 = bitget(pic,2)*2^1+B1 ;
     B3 = bitget(pic,3)*2^2 +B2;
     B4 = bitget(pic,4)*2^3 +B3;

    B5=imrotate(B1,-90);
    B6=imrotate(B2,-90);

    [glnu1, rln1, mlor1, ratio1]=graymatrix(B1);
    [glnu2, rln2, mlor2, ratio2]=graymatrix(B2);
    [glnu3, rln3, mlor3, ratio3]=graymatrix(B3);
    [glnu4, rln4, mlor4, ratio4]=graymatrix(B4);
    [glnu5, rln5, mlor5, ratio5]=graymatrix(B5);
    [glnu6, rln6, mlor6, ratio6]=graymatrix(B6);
    train(m,1:24)=[glnu1, rln1, mlor1, ratio1, glnu2, rln2, mlor2, ratio2, glnu3, rln3, mlor3, ratio3, glnu4, rln4, mlor4, ratio4, glnu5, rln5, mlor5, ratio5, glnu6, rln6, mlor6, ratio6];
    m=m+1;
end

for i=1:200
    image=imread(['./dataset/' num2str(i) '.jpg']);
    %image=imread('lena.tif');
    %image=rgb2gray(image);
    image=imresize(image,[256 256]);
    [h, w, d]=size(image);
    pic=image;
     B1 = bitget(pic,1)*2^0;
     B2 = bitget(pic,2)*2^1+B1 ;
     B3 = bitget(pic,3)*2^2 +B2;
     B4 = bitget(pic,4)*2^3 +B3;

    B5=imrotate(B1,-90);
    B6=imrotate(B2,-90);

    [glnu1, rln1, mlor1, ratio1]=graymatrix(B1);
    [glnu2, rln2, mlor2, ratio2]=graymatrix(B2);
    [glnu3, rln3, mlor3, ratio3]=graymatrix(B3);
    [glnu4, rln4, mlor4, ratio4]=graymatrix(B4);
    [glnu5, rln5, mlor5, ratio5]=graymatrix(B5);
    [glnu6, rln6, mlor6, ratio6]=graymatrix(B6);
    train(m,1:24)=[glnu1, rln1, mlor1, ratio1, glnu2, rln2, mlor2, ratio2, glnu3, rln3, mlor3, ratio3, glnu4, rln4, mlor4, ratio4, glnu5, rln5, mlor5, ratio5, glnu6, rln6, mlor6, ratio6];
    m=m+1;
end
save('traindata_match.mat','train')

%figure,imshow(B5);
%figure,imshow(B6);


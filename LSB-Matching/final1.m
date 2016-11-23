clear all;
clc;

another1=zeros(100,24);
m=1;
for i=1:100
    image=imread(['./testing1/' num2str(i) '.jpg']);
    image=imresize(image,[256 256]);
    [h, w, d]=size(image);
     pic=check(image,i,1);
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
    another1(m,1:24)=[glnu1, rln1, mlor1, ratio1, glnu2, rln2, mlor2, ratio2, glnu3, rln3, mlor3, ratio3, glnu4, rln4, mlor4, ratio4, glnu5, rln5, mlor5, ratio5, glnu6, rln6, mlor6, ratio6];
    m=m+1;
end
save('another1.mat','another1');

another2=zeros(100,24);
m=1;
for i=101:200
    image=imread(['./testing1/' num2str(i) '.jpg']);
    image=imresize(image,[256 256]);
    [h, w, d]=size(image);
     pic=check(image,i,2);
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
    another2(m,1:24)=[glnu1, rln1, mlor1, ratio1, glnu2, rln2, mlor2, ratio2, glnu3, rln3, mlor3, ratio3, glnu4, rln4, mlor4, ratio4, glnu5, rln5, mlor5, ratio5, glnu6, rln6, mlor6, ratio6];
    m=m+1;
end
save('another2.mat','another2');

load ('classify.mat');
load ('another1.mat');
labels1=svmclassify(classify,another1);
load ('another2.mat');
labels2=svmclassify(classify,another2);
count1=0; count2=0; count3=0; count4=0;
for i=1:20
    if(labels1(i,1)==1)
        count4=count4+1;
    end
end
for i=21:40
     if(labels1(i,1)==1)
        count1=count1+1;
    end
end
for i=41:60
 if(labels1(i,1)==1)
        count2=count2+1;
 end
end
for i=61:80
 if(labels1(i,1)==1)
        count3=count3+1;
 end
end

for i=81:100
 if(labels1(i,1)==1)
        count4=count4+1;
 end
end

disp(['LSB Matching: Accuracy of steganalyzer for 40% embedding is ' num2str(count1*5)]);
disp(['LSB Matching: Accuracy of steganalyzer for 60% embedding is ' num2str(count2*5)]);
disp(['LSB Matching: Accuracy of steganalyzer for 80% embedding is ' num2str(count3*5)]);
disp(['LSB Matching: Accuracy of steganalyzer for 100% embedding is ' num2str(count4*2.5)]);

count=0;
for i=1:100
    if(labels2(i,1)==-1)
        count=count+1;
    end
end
disp(['LSB Matching: Accuracy of steganalyzer for clean images is ' num2str(count)]);

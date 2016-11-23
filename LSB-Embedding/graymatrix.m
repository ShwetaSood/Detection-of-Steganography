
function [ glnu, rln, mlor, ratio ] = graymatrix(image)
%{
image=imread('lena.tif'); %Comment this and below set
image=rgb2gray(image);
image=imresize(image,[256 256]);
%}
[h, w, d]=size(image);
matrix=zeros(256,256);

%{
image=[[0 0 3 3];[1 2 2 1];[3 2 2 2];[2 1 1 1]];
h=4;
w=4;
matrix=zeros(4,4);
%}
%{
image_temp=zeros(h,w);
angle=90;
k=1;
if(angle==90)
    for j=1:w
        l=1;
        for i=h:-1:1
            %disp([num2str(i) ',' num2str(j)]);
            %disp([num2str(k) ',' num2str(l)]);
            image_temp(k,l)=image(i,j);
            l=l+1;
        end
        k=k+1;
    end
end 
%}
%image_temp=imrotate(image,-90);


max=0;
for i=1:h
    j=1;
    while (j<=w)
        row=image(i,j);
        k=j+1;
        count=1;
        if(k>w)
            matrix(row+1,count)=matrix(row+1,count)+1;
            break;
        else
            while(image(i,j)==image(i,k))
                count=count+1;
                k=k+1;
                if(k>w)
                    break;
                end
            end
            if(max<count)
                max=count;
            end
            %disp([ num2str(row+1) ' and ' num2str(count) ' and ' num2str(k)]);
            matrix(row+1,count)=matrix(row+1,count)+1;
            %disp(['Value at (' num2str(row+1) ',' num2str(count),') is', num2str(matrix(row+1,count))]);
            j=k;
            %disp (j);
        end
    end
end
matrix_final=matrix(1:h,1:max);
%matrix_final
%Computing GLNU
glnu=0;

total=0;
for i=1:h
    sum=0;
    for j=1:max
        sum=sum+matrix_final(i,j);
        total=total+matrix_final(i,j);
    end
    glnu=glnu+(sum^2);
end
glnu=glnu/total;

%Computing RLN
rln=0;
total=0;
for j=1:max
    sum=0;
    for i=1:h
        sum=sum+matrix_final(i,j);
        total=total+matrix_final(i,j);
    end
    rln=rln+(sum^2);
end
rln=rln/total;

%Computing RP
rp=total/(h*w);
%Computing Maximum length of the run (MLOR)
 mlor=max;
 %Computing total possible runs in an image
 tpr=h*w;
%disp([num2str(glnu) ' , ' num2str(rln) ' , ' num2str(rp) ' , ' num2str(mlor) ' , ' num2str(tpr) ' , ' num2str(rp/tpr)]);
ratio=rp/tpr;

end

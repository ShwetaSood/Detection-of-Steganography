
function [ glnu, rln, mlor, ratio ] = graymatrix(image)
[h, w, d]=size(image);
matrix=zeros(256,256);

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
            matrix(row+1,count)=matrix(row+1,count)+1;
            j=k;
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

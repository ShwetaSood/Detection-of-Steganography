clear all;
%For testing
%100 percent embedding
name=1;
for i=201:220
    image=imread(['./dataset/' num2str(i) '.jpg']);
    image=imresize(image,[256 256]);
    pic=image;
    B1 = bitget(pic,1)*2^0;
    Btemp=bitget(pic,1);
    B2 = bitget(pic,2)*2^1;
    B3 = bitget(pic,3)*2^2;
    B4 = bitget(pic,4)*2^3 ;
    B5 = bitget(pic,5)*2^4 ;
    B6 = bitget(pic,6)*2^5 ;
    B7 = bitget(pic,7)*2^6 ;
    B8 = bitget(pic,8)*2^7 ; 
  
    len1=(256*256);
    x = randi([0 1],1,len1);
    m=1;
    f=0;
    for j=1:256
        for k=1:256
            if(m<=len1)
                B1(j,k)=x(m);
                m=m+1;
            else
                f=1;
                break;
            end    
        end
        if(f==1)
            break;
        end
    end
    
    image=B1+B2+B3+B4+B5+B6+B7+B8;
    imwrite(image,['./testing/' num2str(name) '.jpg']);
    name=name+1;
    %figure,imshow(image);
    
end
%40 percent embedding
for i=221:240
    image=imread(['./dataset/' num2str(i) '.jpg']);
    image=imresize(image,[256 256]);
    pic=image;
    B1 = bitget(pic,1)*2^0;
    Btemp=bitget(pic,1);
    B2 = bitget(pic,2)*2^1;
    B3 = bitget(pic,3)*2^2;
    B4 = bitget(pic,4)*2^3 ;
    B5 = bitget(pic,5)*2^4 ;
    B6 = bitget(pic,6)*2^5 ;
    B7 = bitget(pic,7)*2^6 ;
    B8 = bitget(pic,8)*2^7 ; 
  
    len1=0.4*(256*256);
    x = randi([0 1],1,len1);
    m=1;
    f=0;
    for j=1:256
        for k=1:256
            if(m<=len1)
                B1(j,k)=x(m);
                m=m+1;
            else
                f=1;
                break;
            end    
        end
        if(f==1)
            break;
        end
    end
    
    image=B1+B2+B3+B4+B5+B6+B7+B8;
    imwrite(image,['./testing/' num2str(name) '.jpg']);
    name=name+1;
    %figure,imshow(image);
    
end
%60 percent embedding
for i=241:260
    image=imread(['./dataset/' num2str(i) '.jpg']);
    image=imresize(image,[256 256]);
    pic=image;
    B1 = bitget(pic,1)*2^0;
    Btemp=bitget(pic,1);
    B2 = bitget(pic,2)*2^1;
    B3 = bitget(pic,3)*2^2;
    B4 = bitget(pic,4)*2^3 ;
    B5 = bitget(pic,5)*2^4 ;
    B6 = bitget(pic,6)*2^5 ;
    B7 = bitget(pic,7)*2^6 ;
    B8 = bitget(pic,8)*2^7 ; 
  
    len1=0.6*(256*256);
    x = randi([0 1],1,len1);
    m=1;
    f=0;
    for j=1:256
        for k=1:256
            if(m<=len1)
                B1(j,k)=x(m);
                m=m+1;
            else
                f=1;
                break;
            end    
        end
        if(f==1)
            break;
        end
    end
    
    image=B1+B2+B3+B4+B5+B6+B7+B8;
    imwrite(image,['./testing/' num2str(name) '.jpg']);
    name=name+1;
    %figure,imshow(image);
    
end
%80 percent embedding
for i=261:280
    image=imread(['./dataset/' num2str(i) '.jpg']);
    image=imresize(image,[256 256]);
    pic=image;
    B1 = bitget(pic,1)*2^0;
    Btemp=bitget(pic,1);
    B2 = bitget(pic,2)*2^1;
    B3 = bitget(pic,3)*2^2;
    B4 = bitget(pic,4)*2^3 ;
    B5 = bitget(pic,5)*2^4 ;
    B6 = bitget(pic,6)*2^5 ;
    B7 = bitget(pic,7)*2^6 ;
    B8 = bitget(pic,8)*2^7 ; 
  
    len1=0.8*(256*256);
    x = randi([0 1],1,len1);
    m=1;
    f=0;
    for j=1:256
        for k=1:256
            if(m<=len1)
                B1(j,k)=x(m);
                m=m+1;
            else
                f=1;
                break;
            end    
        end
        if(f==1)
            break;
        end
    end
    
    image=B1+B2+B3+B4+B5+B6+B7+B8;
    imwrite(image,['./testing/' num2str(name) '.jpg']);
    name=name+1;
    %figure,imshow(image);
    
end
%100 percent embedding
for i=281:300
    image=imread(['./dataset/' num2str(i) '.jpg']);
    image=imresize(image,[256 256]);
    pic=image;
    B1 = bitget(pic,1)*2^0;
    Btemp=bitget(pic,1);
    B2 = bitget(pic,2)*2^1;
    B3 = bitget(pic,3)*2^2;
    B4 = bitget(pic,4)*2^3 ;
    B5 = bitget(pic,5)*2^4 ;
    B6 = bitget(pic,6)*2^5 ;
    B7 = bitget(pic,7)*2^6 ;
    B8 = bitget(pic,8)*2^7 ; 
  
    len1=256*256;
    x = randi([0 1],1,len1);
    m=1;
    f=0;
    for j=1:256
        for k=1:256
            if(m<=len1)
                B1(j,k)=x(m);
                m=m+1;
            else
                f=1;
                break;
            end    
        end
        if(f==1)
            break;
        end
    end
    
    image=B1+B2+B3+B4+B5+B6+B7+B8;
    imwrite(image,['./testing/' num2str(name) '.jpg']);
    name=name+1;
    %figure,imshow(image);
    
end

%100 images without embedding
for i=201:300
    image=imread(['./dataset/' num2str(i) '.jpg']);
    image=imresize(image,[256 256]);
    imwrite(image,['./testing/' num2str(name) '.jpg']);
    name=name+1;
end


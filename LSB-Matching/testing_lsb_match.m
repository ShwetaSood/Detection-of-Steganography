clear all
name=1;
for i=201:220
    image=imread(['./dataset/' num2str(i) '.jpg']);
    image=imresize(image,[256 256]);
Image=double(image);
alpha=0.2;
S=size(Image);
location=rand(S(1),S(2));
location(location<=alpha)=1;
location(location~=1)=0;
lsb_Image=mod(Image,2);
message=randint(S(1),S(2));
message(location==0)=lsb_Image(location==0);
D_I=2*(randint(S(1),S(2))-.5);
Image(lsb_Image~=message)=Image(lsb_Image~=message)+D_I(lsb_Image~=message);
I=uint8(Image);
imwrite(I,['./testing1/' num2str(name) '.jpg']);
name=name+1;


end

for i=221:240
    image=imread(['./dataset/' num2str(i) '.jpg']);
    image=imresize(image,[256 256]);
Image=double(image);
alpha=0.4;
S=size(Image);
location=rand(S(1),S(2));
location(location<=alpha)=1;
location(location~=1)=0;
lsb_Image=mod(Image,2);
message=randint(S(1),S(2));
message(location==0)=lsb_Image(location==0);
D_I=2*(randint(S(1),S(2))-.5);
Image(lsb_Image~=message)=Image(lsb_Image~=message)+D_I(lsb_Image~=message);
I=uint8(Image);
% [x,y]=perfcurve(I,74,1);
% plot(x1,y1);
% xlabel('False positive rate'); ylabel( 'True positive rate')

imwrite(I,['./testing1/' num2str(name) '.jpg']);
name=name+1;

end

for i=241:260
    image=imread(['./dataset/' num2str(i) '.jpg']);
    image=imresize(image,[256 256]);
Image=double(image);
alpha=0.6;
S=size(Image);
location=rand(S(1),S(2));
location(location<=alpha)=1;
location(location~=1)=0;
lsb_Image=mod(Image,2);
message=randint(S(1),S(2));
message(location==0)=lsb_Image(location==0);
D_I=2*(randint(S(1),S(2))-.5);
Image(lsb_Image~=message)=Image(lsb_Image~=message)+D_I(lsb_Image~=message);
I=uint8(Image);
imwrite(I,['./testing1/' num2str(name) '.jpg']);
name=name+1;

end

for i=261:280
    image=imread(['./dataset/' num2str(i) '.jpg']);
    image=imresize(image,[256 256]);
Image=double(image);
alpha=0.8;
S=size(Image);
location=rand(S(1),S(2));
location(location<=alpha)=1;
location(location~=1)=0;
lsb_Image=mod(Image,2);
message=randint(S(1),S(2));
message(location==0)=lsb_Image(location==0);
D_I=2*(randint(S(1),S(2))-.5);
Image(lsb_Image~=message)=Image(lsb_Image~=message)+D_I(lsb_Image~=message);
I=uint8(Image);
imwrite(I,['./testing1/' num2str(name) '.jpg']);
name=name+1;

end

for i=281:300
    image=imread(['./dataset/' num2str(i) '.jpg']);
    image=imresize(image,[256 256]);
Image=double(image);
alpha=1;
S=size(Image);
location=rand(S(1),S(2));
location(location<=alpha)=1;
location(location~=1)=0;
lsb_Image=mod(Image,2);
message=randint(S(1),S(2));
message(location==0)=lsb_Image(location==0);
D_I=2*(randint(S(1),S(2))-.5);
Image(lsb_Image~=message)=Image(lsb_Image~=message)+D_I(lsb_Image~=message);
I=uint8(Image);
imwrite(I,['./testing1/' num2str(name) '.jpg']);
name=name+1;

end
for i=201:300
    image=imread(['./dataset/' num2str(i) '.jpg']);
    image=imresize(image,[256 256]);
    imwrite(image,['./testing1/' num2str(name) '.jpg']);
    name=name+1;
end
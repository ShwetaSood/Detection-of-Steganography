
for i=1:40
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
imwrite(I,['./stego1/' num2str(i) '.jpg']);


end

for i=41:80
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
imwrite(I,['./stego1/' num2str(i) '.jpg']);

end

for i=81:120
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
imwrite(I,['./stego1/' num2str(i) '.jpg']);

end

for i=121:160
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
imwrite(I,['./stego1/' num2str(i) '.jpg']);

end

for i=161:200
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
imwrite(I,['./stego1/' num2str(i) '.jpg']);

end

clear all; close all; clc;
pic1 = double(imread('1.jpg'));
pic2 = rgb2hsv(pic1)*255;
pic3 = pic2(:,:,2);
figure(); imshow(pic3,[]);
[m n] = size(pic3);
m*n
pic4=[];
for i =1:m
    for j=1:n
        if pic3(i,j)<=195
            pic4(i,j)=0;
        else
            pic4(i,j)=255;
        end
    end
end
figure();imshow(pic4,[]);
figure();imshow(pic1(:,:,3),[]);
pic5 = pic4.*pic1(:,:,3)/255;
figure();imshow(pic5,[]);
pic6=[];
for i =1:m
    for j=1:n
        if pic5(i,j)<=30
            pic6(i,j)=0;
        else
            pic6(i,j)=255;
        end
    end
end
figure();imshow(pic6,[]);
Urmia_lake = pic6(320:410,450:550);
Caspian_sea = pic6(50:410,550:750);
figure();imshow(Caspian_sea) %Caspain Sea
figure();imshow(Urmia_lake) %Urmia Lake

[p q] =size(Urmia_lake);
count=0;
for i=1:p
    for j=1:q
        if Urmia_lake(i,j)==255
            count= count+1;
        end
    end
end

disp(count);

[p q] =size(Caspian_sea);
count1=0;
for i=1:p
    for j=1:q
        if Caspian_sea(i,j)==255
            count1= count1+1;
        end
    end
end
disp(count1)
 
function [fname,cnt]=getfilename(label,count)
if label==0
    count(1)=count(1)+1;
    fname=sprintf('%d.jpg',count(1));
elseif label==1
    count(2)=count(2)+1;
    fname=sprintf('%d.jpg',count(2));
elseif label==2
    count(3)=count(3)+1;
    fname=sprintf('%d.jpg',count(3));
elseif label==3
    count(4)=count(4)+1;
    fname=sprintf('%d.jpg',count(4));
elseif label==4
    count(5)=count(5)+1;
    fname=sprintf('%d.jpg',count(5));
elseif label==5
    count(6)=count(6)+1;
    fname=sprintf('%d.jpg',count(6));
elseif label==6
    count(7)=count(7)+1;
    fname=sprintf('%d.jpg',count(7));
elseif label==7
    count(8)=count(8)+1;
    fname=sprintf('%d.jpg',count(8));
elseif label==8
    count(9)=count(9)+1;
    fname=sprintf('%d.jpg',count(9));
elseif label==9
    count(10)=count(10)+1;
    fname=sprintf('%d.jpg',count(10));
end
cnt=count;


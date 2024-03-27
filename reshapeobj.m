function newdigit=reshapeobj(digit)
newdigit=zeros(28,28);
indx=0;
for i=1:28
    newdigit(i,:)=digit(indx+1:indx+28);
    indx=indx+28;
end

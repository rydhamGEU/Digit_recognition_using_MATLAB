dataset=readmatrix("mnist_train.csv"); 
labels=dataset(:,1);
digitcount=zeros(10,1);
mkdir('Digitdataset');
mkdir('Digitdataset\0');
mkdir('Digitdataset\1');
mkdir('Digitdataset\2');
mkdir('Digitdataset\3');
mkdir('Digitdataset\4');
mkdir('Digitdataset\5');
mkdir('Digitdataset\6');
mkdir('Digitdataset\7');
mkdir('Digitdataset\8');
mkdir('Digitdataset\9');
for i=1:60000
    digit=dataset(i,2:end);
    digit=uint8(reshapeobj(digit));
    getlabel=labels(i);
    folderpath=strcat("C:\Users\amank\Desktop\Digit Recognition\Digitset\Digitdataset\",num2str(getlabel),'\');
    [filename,countupdate]=getfilename(getlabel,digitcount);
    imwrite(digit,strcat(folderpath,filename));
    digitcount=countupdate;    
end


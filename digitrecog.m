path="C:\Users\amank\Desktop\Digit Recognition\Digitset\Digitdataset";
img=imageDatastore(path,'IncludeSubfolders',true,'LabelSource','foldernames');
numtrain=1000;
[TrainImg,TestImg]=splitEachLabel(img,numtrain,'randomize');
layers=[
     imageInputLayer([28 28 1],'Name','Input')
     convolution2dLayer(3,8,'Padding','same','Name','Conv_1')
     batchNormalizationLayer('Name','BN_1')
     reluLayer('Name','Relu_1')
     maxPooling2dLayer(2,'Stride',2,'Name','MaxPool_1')
     convolution2dLayer(3,16,'Padding','same','Name','Conv_2')
     batchNormalizationLayer('Name','BN_2')
     reluLayer('Name','Relu_2')
     maxPooling2dLayer(2,'Stride',2,'Name','MaxPool_2')
    convolution2dLayer(3,32,'Padding','same','Name','Conv_3')
     batchNormalizationLayer('Name','BN_3')
     reluLayer('Name','Relu_3')
     maxPooling2dLayer(2,'Stride',2,'Name','MaxPool_3')
    convolution2dLayer(3,64,'Padding','same','Name','Conv_4')
     batchNormalizationLayer('Name','BN_4')
     reluLayer('Name','Relu_4')
     
     fullyConnectedLayer(10,'Name','FC')
     softmaxLayer('Name','SoftMax');
     classificationLayer('Name','Output Classification');


];
    graph=layerGraph(layers);
    plot(graph);
   option=trainingOptions('sgdm','InitialLearnRate',0.01,'MaxEpochs',4,'Shuffle','every-epoch','ValidationData',TestImg,'ValidationFrequency',30,'Verbose',false,'Plots','training-progress');
   net=trainNetwork(TrainImg,layers,option);
   pred=classify(net,TestImg);
   valid=TestImg.labels;
   accuracy=sum(pred == valid)/numel(valid);


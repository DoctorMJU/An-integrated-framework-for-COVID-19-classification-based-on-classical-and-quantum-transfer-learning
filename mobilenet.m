
%Deep features extraction using pretrained Alexnet
clear all;
clc;
close all;
%datset reading with labels
imds = imageDatastore('K:\Article\Dataset', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');

%numTrainImages = numel(imds.Labels);
% loading pretrained Mobilenetv2
net = mobilenetv2;
 
%net.Layers
%analyzeNetwork(net)
% extracting the first layer info
inputSize = net.Layers(1).InputSize;

% preprocessing of input data
augmentedTrainingSet = augmentedImageDatastore(inputSize, imds, 'ColorPreprocessing', 'gray2rgb');
%last fully connected layer of the mobilenetv2 for feature extraction
layer = 'Logits'; %mobilenetv2
%feature extraction
Mobilenet_features = activations(net,augmentedTrainingSet,layer,'OutputAs','rows');
% converting to double for further processing
Mobilenet_features=double(Mobilenet_features);
% saving the  features in current MATLAb directory
save('Mobilenet_features.mat','Mobilenet_features');


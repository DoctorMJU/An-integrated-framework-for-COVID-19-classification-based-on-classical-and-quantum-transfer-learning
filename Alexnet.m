
%Deep features extraction using pretrained Alexnet
clear all;
clc;
close all;
%datset reading with labels
imds = imageDatastore('K:\Article\Dataset', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');

%numTrainImages = numel(imds.Labels);
% Loading pretrained alexnet
net = alexnet;
 
%net.Layers
%analyzeNetwork(net)
% extracting the first layer info
inputSize = net.Layers(1).InputSize;

% preprocessing of input data
augmentedTrainingSet = augmentedImageDatastore(inputSize, imds, 'ColorPreprocessing', 'gray2rgb');

%last fully connected layer of the Alexnet for feature extraction
layer = 'fc8'; %alexnet
%feature extraction
Alexnet_features = activations(net,augmentedTrainingSet,layer,'OutputAs','rows');
%label extraction
Class_label = imds.Labels;
% converting to double for further processing
Class_label=double(Class_label);
% converting the extracted features to double for further processing
Alexnet_features=double(Alexnet_features);
% saving the both features and label in current MATLAb directory
save('Alexnet_features.mat','Alexnet_features');
save('Class_label.mat','Class_label');

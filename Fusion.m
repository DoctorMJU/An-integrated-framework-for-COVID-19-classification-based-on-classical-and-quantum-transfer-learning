% horizental feature fusion
clear all;
clc;
close all;
% Loading the bothe feature vectors to the workspace
load('K:\Article_Implementation Code\Classical Tranfer learning Part\Alexnet_features.mat');
load('K:\Article_Implementation Code\Classical Tranfer learning Part\Mobilenet_features.mat');
% fusion of features
Fused_features = horzcat(Alexnet_features,Mobilenet_features);
%saving after fusion
save('Fused_features.mat','Fused_features');
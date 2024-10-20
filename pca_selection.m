% featureb selection using PCA after fusion
clear all;
clc;
close all;
% loading the fused feature vectore from current directory
load('K:\Article\Fused_features.mat');
load('K:\Article\Class_label.mat');
% concatenating the label source
Fused_features= horzcat(Fused_features,Class_label);
%Applying the PCA for feature selection
[pc,score] = princomp(Fused_features);
% selecting the top 1000 features for classification
Pca_features1 = score(:,1:1000);   
%Applying the PCA for feature selection
[pc,score] = princomp(Pca_features1);
% selecting the top 700 features for classification
Pca_features2 = score(:,1:700);
%Applying the PCA for feature selection
[pc,score] = princomp(Pca_features2);
% selecting the top 500 features for classification
Pca_features3 = score(:,1:500);


%adding labels in each selected feature vector

Pca_features1 = horzcat(Pca_features1,Class_label);
Pca_features2 = horzcat(Pca_features2,Class_label);
Pca_features3 = horzcat(Pca_features3,Class_label);

save('Pca_features1.mat','Pca_features1'); %Top100 features
save('Pca_features2.mat','Pca_features2');  % top 700 features
save('Pca_features3.mat','Pca_features3');  % top 500 features
%now for classification classifier learner will be used to train the all
%machine learing classifiers using classification learner built in app of
%MATLAB GUI based and 5-fold and 10 fold cross validation method will be
%used for testing and training
classificationLearner
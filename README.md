# An-integrated-framework-for-COVID-19-classification-based-on-classical-and-quantum-transfer-learning
Implementation of An integrated framework for COVID-19 classification based on classical and quantum transfer learning from a chest radiograph
![image](https://github.com/user-attachments/assets/c50bb09b-1378-4dd6-ba8e-ef5dd6aa70fc)
To implement the above method please perform the following steps
To implement the classical transfer learning part
**Step1**
In first step run the Alexnet.m file in MATLAB (be sure that pre-trained weights of the Alexnet are installed in MATLAB)
On the execution completion this file will save a feature vector and label vector in the current MATLAB Directory as Alexnet_features.mat and Class_label.mat

**Step2**
In second step run the mobilenet.m file in MATLAB (be sure that pre-trained weights of the mobilenet are installed in MATLAB) on execution this will save the Mobilenet_features.mat file in current directory

**Step 3**
In this step run the Fusion.m file for feature fusion this will save the file Fused_features.mat in current directory

**Step 4**
In this step run the file pca_selection.m after successful execution this will open a Classification Learner app of MATLAB for classification 
Step 5
In the final step GUI of classification Learner app will be opened from GUI select New session that will open a window where you need to select the input data set selection for example pca_features3 select the 5 fold validation and click start session button. In the new open window now select the ALL for all classifiers and press the train button also disable parallel button.

To implement the Quantum transfer learning Part
**Step1**
Run the file concurrency_and_computation_practice.ipynb file and use the pre-trained weights present in the folder with .pth file (Guide for each step is present in the notebook)
**DataSet Link**
https://www.kaggle.com/datasets/javeria/an-integrated-framework

All the experiment were performed on the above dataset for vidio tutorial please click Article_vidio MP4 file

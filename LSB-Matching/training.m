clear all;
load('traindata_match.mat');
group=zeros(400,1);
group(1:200)=1;
group(201:400)=-1;
options = optimset('maxiter',1000);
classify = svmtrain(train,group,'kernel_function','quadratic','quadprog_opts',options);

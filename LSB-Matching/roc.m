clear all;
load ('traindata_match.mat');
train1=load ('classify.mat');
t=train(400:end,1:24);
resp = strcmp(train1.classify.GroupNames,'1');
%mdl = fitglm(train,resp,'Distribution','binomial','Link','logit');
score_log = fitglm(t,t);
[x,y]=perfcurve(t,score_log,'true');
plot(x,y);
xlabel('False positive rate'); ylabel( 'True positive rate');

% train2=load('traindata.mat');
% classify2=load('classify.mat');
% [x,y]=perfcurve(train2.traindata.mat,classify2.classify.mat,1);
% plot(x,y);
% xlabel('False positive rate'); ylabel( 'True positive rate');

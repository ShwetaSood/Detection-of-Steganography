clear all;
load ('traindata_match.mat');
train1=load ('classify.mat');
t=train(400:end,1:24);
resp = strcmp(train1.classify.GroupNames,'1');
score_log = fitglm(t,t);
[x,y]=perfcurve(t,score_log,'true');
plot(x,y);
xlabel('False positive rate'); ylabel( 'True positive rate');

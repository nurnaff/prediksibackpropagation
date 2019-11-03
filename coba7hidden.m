data=xlsread('data_training_ipa.xlsx','b2:i562');
p=data(:,1:7);
p=p';
t=data(:,8);
t=t';
net=newff([min(p(1,:)) max(p(1,:));min(p(2,:)) max(p(2,:));min(p(3,:)) max(p(3,:));min(p(4,:)) max(p(4,:));min(p(5,:)) max(p(5,:))
;min(p(6,:)) max(p(6,:));min(p(7,:)) max(p(7,:))],[7,1],{'tansig','purelin'});
tra=train(net,p,t);
target=xlsread('data_training_ipa.xlsx','b563:i702');
input=target(:,1:7);
input=input';
hasil=sim(tra,input);
y=target(:,8);
[b k]=size(target);
jum_mse=0;
for i=1:b
    jum_mse=jum_mse+((hasil(i)-y(i))^2);
end
rata_mse=jum_mse/b;
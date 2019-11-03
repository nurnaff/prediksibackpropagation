data=xlsread('data_training_ipa.xlsx','b2:i562');
input=data(:,1:7);
class=data(:,8);
svmStruct = fitrsvm(input,class);
target=xlsread('data_training_ipa.xlsx','b563:i702');
query=target(:,1:7);
hasil=predict(svmStruct,input);
y=target(:,8);
[b k]=size(target);
jum_mse=0;
for i=1:b
    jum_mse=jum_mse+((hasil(i)-y(i))^2);
end
rata_mse=jum_mse/b;
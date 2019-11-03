x=xlsread('data_training_indo.xls','b2:i561');
y=x(:,8);
x_baru=x(:,1:7);
model=fitlm(x_baru,y);
query=xlsread('data_training_indo.xls','b562:h702');
hasil=predict(model,query);
target=xlsread('data_training_indo.xls','i562:i702');
[b k]=size(query)
jum_mse=0;
for i=1:b
    jum_mse=jum_mse+((hasil(i)-target(i))^2);
end
rata_mse=jum_mse/b;
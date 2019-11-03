x=xlsread('data_training_big.xlsx','a2:i561');
y=x(:,9);
x_baru=x(:,1:8);
b=x_baru\y
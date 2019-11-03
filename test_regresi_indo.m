x=xlsread('data_training_indo.xls','b562:h702');
[b k]=size(x);
for i=1:b
         y(i)=(-81.49)+(0.21*x(i,1))+(0.24*x(i,2))+(0.11*x(i,3))+(1.08*x(i,4))+(0.52*x(i,5))-(0.73*x(i,6))+(0.45*x(i,7));
end
y=y';
target=xlsread('data_training_indo.xls','i562:i702');
jum_mse=0;
for i=1:b
    jum_mse=jum_mse+((y(i)-target(i))^2);
end
rata_mse=jum_mse/b;
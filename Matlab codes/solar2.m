clc;clear;close
x=xlsread('C:\Users\amr rashed\Desktop\solardataset.xlsx');
n=length(x);
folder1='C:\Users\amr rashed\Desktop\Matlab\IMG\1\';
folder2='C:\Users\amr rashed\Desktop\Matlab\IMG\0\';
for i=1:n
   y=reshape(x(i,1:end-1),[11 2]);
   if x(i,end)==1
       z=strcat(folder1,num2str(i),'.tif');
       imwrite(y,z)
   else
      z=strcat(folder2,num2str(i),'.tif');
       imwrite(y,z) 
   end
end
clear all;close all;clc;
%%
for case_num = 1:4
f = ['Cas' num2str(case_num) '\Uy_profile.csv'];
M = csvread(f,1,1);
M = M(:,[1 3]);
figure(1);hold on;

loglog(M(:,2),(abs(M(:,1))).^(-3))
p(case_num,:) = polyfit(M(:,2),(abs(M(:,1))).^(-3),1);
plot(M(:,2),polyval(p(case_num,:),M(:,2)),'r--')
end
legend('0.0005', '0.001', '0.002', '0.0025')
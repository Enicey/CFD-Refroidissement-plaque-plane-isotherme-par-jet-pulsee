clear all;close all;clc;
%% Plot options
set(groot,'defaultAxesTickLabelInterpreter','latex'); 
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
%% Analytical data
nu = 0.000015;
Umax = 0.145909; % Umax renvoyer numériquement
% Umax = 0.15; % Umax théorique
Rpipe = 0.005;
Rapp_M_rho_ana = (16/15) * Rpipe * Umax^2;
r = linspace(-0.005,0.005,101);

Poiseuille = Umax * (1 - r.^2 ./ Rpipe^2);

x = linspace(0, 0.3, 1001);
vx1 = x .^ (-1/3) * nu ^ (-1/3) * (Rapp_M_rho_ana) ^ (2/3) * 0.5 * (3/4) ^ (1/3);

f = 'Cas2\Uy_injection.csv';
M_inj = csvread(f,1,1);
M_inj = M_inj(:,[1 3]);
figure(4)
plot(M_inj(:,2), abs(M_inj(:,1)),'linewidth', 1.1);hold on;
plot(r+0.005,Poiseuille)

Rapp_M_rho_num1 = trapz(M_inj(:,2), abs(M_inj(:,1)).^2);
Rapp_M_rho_num2 = trapz(r+0.005, Poiseuille.^2);
vx2 = x .^ (-1/3) * nu ^ (-1/3) * Rapp_M_rho_num1 ^ (2/3) * 0.5 * (3/4) ^ (1/3);

%% Numerical data
for case_num = 1:4
f = ['Cas' num2str(case_num) '\Uy_profile.csv'];
M = csvread(f,1,1);
M = M(:,[1 3]);
x_num = M(:,2)';
v_y_num = abs(M(:,1))';

figure(1);hold on;grid on;
% plot(x_num, v_y_num.^(-3),'b',x, vx1.^(-3),'linewidth', 1.1)
% plot(x_num, v_y_num.^(-3),'b',x, vx2.^(-3),'linewidth', 1.1)
plot(x_num, v_y_num,'linewidth', 1.1)

p(case_num,:) = polyfit(x_num(200:end), v_y_num(200:end).^(-3),1);

figure(2);hold on;grid on;
loglog(M(1:100:end,2),(abs(M(1:100:end,1))).^(-3),'linewidth', 1.1)
plot(M(:,2),polyval(p(case_num,:),M(:,2)),'r--','linewidth', 1)
% 
% figure(3);hold on;grid on;
% plot(M(1:100:end,2), abs(M(1:100:end,1)),'o','linewidth', 1.5)
% plot(M(:,2),polyval(p(case_num,:),M(:,2)).^(-1/3),'r--','linewidth', 1)
end

figure(1);hold on;
% plot(x, vx2, 'ro')
title('Convergence du profil $v(0,y;t_\infty)$')
xlabel('y [m]')
ylabel('$v(0,y;t_\infty) [m/s]$')
% legend('$dx = 0.0005$', '$dx = 0.001$', '$dx = 0.002$', '$dx = 0.0025$')
legend('$dy = 0.0005$', '$dy = 0.001$', '$dy = 0.002$', '$dy = 0.0025$')
% saveas(gcf,'v_conv.png')

figure(2)
title('Comparaison de $v(0,y;t_\infty)^{-3} = A \times (y - y_0)$')
plot(x, vx1.^-3, 'b-')
xlabel('y [m]')
ylabel('$v(0,y;t_\infty)^{-3} \; [s^3/m^3]$')
legend('$v(0,y;t_\infty)^{-3}$ num', 'fit $v(0,y;t_\infty)^{-3}$ num', '$v(0,y;t_\infty)^{-3}$ ana','location','northwest')
% saveas(gcf,'pente.png')
% 
% figure(3)
% plot(x, vx, 'ro')
% xlabel('y [m]')
% ylabel('Uy reconstruit')
% legend('0.0005', '0.001', '0.002', '0.0025')
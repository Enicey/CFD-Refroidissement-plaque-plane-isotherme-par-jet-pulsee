clear all;close all;clc;format long;
%%
U = 0.1; % Vitesse d'injection
D = 0.01; % Injection diameter
L_tot = 1; % Total length of the domain
L = (L_tot - D) / 2; % Length of a side block
r = 1.1; % Smoothness

N = 1:500; % Number of elements

dx = L * (r - 1) ./ ((r .^ N) - 1);

n = N(find(dx >= 0.0025,1,'last')) + 1;

R = floor(r ^ (n - 2));

r = R ^ (1 / (n - 2));

dt = ((L * (r - 1) ./ ((r ^ (n - 1)) - 1)) / U) * 0.95;

R_inv = 1/R;

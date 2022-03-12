clear all;close all;clc;format long;
%%
U = 0.15;               % Input max velocity
D = 0.01;               % Injection diameter
L_tot = 1;              % Total length of the domain
L = (L_tot - D) / 2;    % Length of a side block
r = 1.1;                % Smoothness
dx_maille = 0.001;      % Dimension of the smallest element
N = 1:500;              % Number of elements

dx = L * (r - 1) ./ ((r .^ N) - 1);

% Number of point
n = N(find(dx >= dx_maille,1,'last')) + 1;

% General aspect ratio
R = floor(r ^ (n - 2));
R_inv = 1/R;

r = R ^ (1 / (n - 2));

% Time step
dt = ((L * (r - 1) ./ ((r ^ (n - 1)) - 1)) / U) * 0.95;



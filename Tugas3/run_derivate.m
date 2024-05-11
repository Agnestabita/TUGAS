%% Turunan Pertama secara Numerik menggunakan Function
clc
clear

f = @(x) x^3 - 2*x^2 + 5*x + 1;
x0 = 1;
h = 0.01; % Step size

df_numeric = derivate_numeric(f, x0, h);

fprintf('Turunan pertama f(%f) menggunakan metode numerik dengan step size %f\n adalah: %f\n', x0, h, df_numeric);


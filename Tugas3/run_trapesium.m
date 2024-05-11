%% Integral numerik menggunakan metode trapesium
clc
clear

f = @(x) x.^3 - 2*x.^2 + 5*x + 1;
a = 1;
b = 4;
n = 10;

integral_numerik = trapesium(a, b, n, f);
disp(['Hasil Integral Numerik ', num2str(a), ' Hingga ', num2str(b), ' adalah: ', num2str(integral_numerik)]);
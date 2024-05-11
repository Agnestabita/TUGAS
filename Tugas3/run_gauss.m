%% Metode Gauss Seidel

clc
clear

%% Contoh SPL :
% 10x1 - x2 + 2x3 = 6
% -x1 + 11x2 - x3 + 3x4 = 25
% 2x1 - x2 + 10x3 - x4 = -11
% 3x2 - x3 +8x4 = 15

A = [10 -1 2 0; -1 11 -1 3; 2 -1 10 -1; 0 3 -1 8];
b = [6; 25; -11; 15];
x0 = [0; 0; 0; 0];
tol = 1e-6; % Toleransi harus lebih kecil dari 1

[x_gs, iter_gs] = gauss_seidel(A, b, x0, tol);

fprintf('Metode Gauss-Seidel:\n');
fprintf('Solusi: [x1 x2 x3 x4] = [%f %f %f %f]\n', x_gs(1), x_gs(2), x_gs(3), x_gs(4));
fprintf('Jumlah iterasi: %d\n', iter_gs);
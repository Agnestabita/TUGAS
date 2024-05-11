
function [x, iter] = gauss_seidel(A, b, x0, tol)
    % Inisialisasi
    x = x0;
    iter = 0;

    % Iterasi
    while norm(A*x - b) > tol
        for i = 1:length(x)
            % Hitung nilai baru untuk x_i
            sum = 0;
            for j = 1:length(x)
                if j ~= i
                    sum = sum + A(i, j) * x(j);
                end
            end
            x(i) = (b(i) - sum) / A(i, i);
        end

        % Hitung jumlah iterasi
        iter = iter + 1;
    end
end


function [x, iter] = sor(A, b, x0, tol, omega)
    % Inisialisasi
    x = x0;
    iter = 0;

    % Iterasi
    while norm(A*x - b) > tol
        x_new = x;
        for i = 1:length(x)
            % Hitung nilai baru untuk x_i
            sum = b(i);
            for j = 1:length(x)
                if j ~= i
                    sum = sum - A(i, j) * x(j);
                end
            end
            x_new(i) = (omega / A(i, i)) * sum + (1 - omega) * x_new(i);
        end
        x = x_new;

        % Hitung jumlah iterasi
        iter = iter + 1;
    end
end

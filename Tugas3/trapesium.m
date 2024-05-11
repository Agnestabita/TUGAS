function integral = trapesium(a, b, n, f)
    % Menghitung panjang subinterval
    h = (b - a) / n;

    % Menghitung nilai f pada titik-titik subinterval
    x = a:h:b;
    fx = f(x);

    % Menghitung luas trapesium
    integral = 0.5 * h * (fx(1) + 2*sum(fx(2:end-1)) + fx(end));
end
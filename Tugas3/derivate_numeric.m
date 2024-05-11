function df = derivate_numeric(f, x0, h)
  
% df = (f(x0 + h) - f(x0)) / h; %Metode Beda Maju
df = (f(x0) - f(x0 - h)) / h; %Metode Beda Mundur
% df = (f(x0 + h) - f(x0 - h)) / (2*h); %Metode Beda Pusat

end
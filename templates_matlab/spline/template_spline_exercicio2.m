% Pergunta 1

x = [0 0.5 1.0 1.5 2.0 2.5];
y = [1 2.1 2.9 3.9 5.7 8.7];

I = trapz(x, y);
fprintf('Integral = %.4f\n', I);
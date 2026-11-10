% Pergunta 1

x = [1 3 5 7 8 9 10 11];
y = [5 13 20 27 30 33 37 40];

s = spline(x, y);

i = 5;          % segmento: 8.5 está em [8,9]
xq = 8.5;

c = s.coefs(i,:);
fprintf('\nNº Segmento (i) = %d\n', i);
fprintf('x(i-1) = %g\n', s.breaks(i));
fprintf('a (x-xi-1)^3 = %.4f\n', c(1));
fprintf('b (x-xi-1)^2 = %.4f\n', c(2));
fprintf('c (x-xi-1)   = %.4f\n', c(3));
fprintf('d            = %.4f\n', c(4));
fprintf('s3(%g) = %.4f\n', xq, ppval(s, xq));

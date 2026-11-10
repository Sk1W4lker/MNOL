% 2 Questão

X = [1 3 5 7 18 20];
Y = [30 22 20 15 10 15];

% Parábola (grau 2)
[p, S] = polyfit(X, Y, 2);

% Estimativa de f(10)
y = polyval(p, 10);

fprintf('\n--- COEFICIENTES (p) ---\n');
disp(p);
fprintf('--- VALOR f(10) ---\n');
disp(y);
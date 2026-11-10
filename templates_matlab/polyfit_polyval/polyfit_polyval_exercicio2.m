% 3 Questão

x = [0 8 12 16 18 20]';
y = [30 22 20 15 10 15]';

% Modelo M(x;c1,c2) = 2*c1 + c2*x  ->  matriz de estudo [2 x]
A = [2*ones(size(x)) x];

% Mínimos quadrados
c = A \ y;

fprintf('\n--- c1 = %.4f   c2 = %.4f ---\n', c(1), c(2));
fprintf('M(x) = 2*%.2f + %.2f*x\n', c(1), c(2));
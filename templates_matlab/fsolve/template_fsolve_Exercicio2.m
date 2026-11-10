% 2 Questão


% Aproximação inicial (2 1)^T
x0 = [2, 1]; 

% Como não foi indicada tolerância específica neste enunciado, 
% usamos as opções padrão do MATLAB (ou podes omitir o 'opt')
[x, fval, exitflag, output] = fsolve(@fun, x0);

% Imprimir explicitamente o valor da função (fval) para responder à pergunta
fprintf('\n--- O VALOR DA FUNÇÃO (fval) É: ---\n');
disp(fval');

function [ F ] = fun(x)
F = zeros(2,1);

% Equação 1: ln(x1)*x2 - x2^2 = -5
% Passando o -5 para a esquerda fica +5 = 0
F(1) = log(x(1))*x(2) - x(2)^2 + 5;

% Equação 2: x1^2 * x2^2 - 3*x2 = 3
% Passando o 3 para a esquerda fica -3 = 0
F(2) = x(1)^2 * x(2)^2 - 3*x(2) - 3;
end
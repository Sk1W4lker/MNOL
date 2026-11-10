

% MaxIter -> limita as iterações
% TolX    -> restrição para o valor de x (epsilon 1)
% TolFun  -> restrição para o falor de f(x) (epsilon 2)
opt = optimset('MaxIter', 400, 'TolX', 1e-6, 'TolFun', 1e-2);
x0 = [5 5]; % colocar valor inicial aqui

% A linha mantém o ; no final para não imprimir lixo desnecessário
[x,fval,exitflag,output] = fsolve(@fun, x0, opt)

% --- ADICIONA ESTAS LINHAS PARA IMPRIMIR O RESULTADO ---
fprintf('\nNúmeros:\n');
disp(x);
% -------------------------------------------------------

%funcao
function [ F ] = fun(x)
F = zeros(2,1);

F(1) = log(x(1))*x(2) - x(2)^2 + 5;
F(2) = x(1)^2 * x(2)^2 - 3*x(2) - 3;
end

% ln(x)  ==  log(x)
% e^3    ==  exp(3)
% x + 3y ==  x(1) + 3*x(2)



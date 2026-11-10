% Pergunta 2

f = @(x) cos(x.^2);

I = integral(f, 1, 10);
fprintf('I = %.4f\n', I);
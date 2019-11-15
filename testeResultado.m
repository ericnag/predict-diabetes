function [acertos] = testeResultado(base, n, k)
  disp("Calculando predicoes...");
  for i = 1:n 
    predicoes(i) = knn(base, base(i, 1:7), k);
  end
  acertos = 0;
  disp("Calculando numero de acertos...");
  for i = 1:n
    if (predicoes(i) == base(i, 8))
      acertos++;
    end
  end
  acertos
end

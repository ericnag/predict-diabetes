function [matrizConfusa, k, acuracia] = testeResultado(base, n, k)
  disp("\nCalculando predicoes...");
  for i = 270:n 
    predicoes(i) = knn(base, base(i, 1:7), k);
  end
  tp = 0;
  fp = 0;
  fn = 0;
  tn = 0;
  disp("Calculando numero de acertos...\n");
  for i = 1:n
    if (predicoes(i) == base(i, 8) && predicoes(i) == 1) ##Se verdadeiro positivo
      tp++;
    else
      if (predicoes(i) != base(i, 8) && predicoes(i) == 1) ##Se falso positivo
        fp++;
      else
        if (predicoes(i) != base(i, 8) && predicoes(i) == 0) ##Se falso negativo
          fn++;
        else
           if (predicoes(i) == base(i, 8) && predicoes(i) == 0) ##Se verdadeiro negativo
             tn++;
            endif
        endif
      endif    
    endif    
  end
  matrizConfusa = [tp fp; fn tn]
  k
  acuracia = (tp+tn)/n
end

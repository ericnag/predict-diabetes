function [rotuloPredito] = knn(base, k, Objeto)
  
  ## Cria vetor de rotulos
  rotulos = base(:, 8);
  
  ## Remove ultima coluna que é o rotulo
  base = eye(8); 
  base(:,[8]) = []; 
  disp(base)
  
  [totObj, ~] = size(base);
  
  for i=1:totObj
    d(i) = DISTEUCLIDIANA(base(i,:), Objeto);
  end
  
  [Val, id] = sort(d);
  
  idObj = id(1:k);
  
  rotuloPredito = mode(rotulos(idObj));
  
  vizinhosProximos = base(idObj,:);
  
  plot(base(:,1), base(:,2), 'b*', vizinhosProximos(:,1), vizinhosProximos(:,2), 'r*', Objeto(:, 1), Objeto(:, 2), 'm*');
  
endfunction

function [classe] = knn(base, objeto, k)
  tamanhoBase = size(base);
  
  classe1 = base(1:500, :); #Os 500 primeiros nao sao diabeticos
  classe2 = base(501:768, :); 
  
  #Fazendo o plot com a base de dados
  hold on
  plot(classe1(:,2), classe1(:,5), 'b*') #Classe 1(Azul) -> Nao diabetico
  plot(classe2(:,2), classe2(:,5), 'r*') #Classe 2(Vermelho) -> Diabetico
  
  vetorDist = [];
 
  #Pega todas as distâncias e guarda em vetorDist
  for i = 1:tamanhoBase(1)
    vetorDist(i) = DISTEUCLIDIANA(base(i), objeto);
  endfor
  
  #Distâncias com rótulos
  distRotulos = [vetorDist(:), base(:, tamanhoBase(2))];
  ordenado = sortrows(distRotulos);
  
  #Pega K linhas com as menores distâncias e seus rótulos
  resultado = ordenado(1:k, :);
  tamanhoResultado = size(resultado);
   
  if k == 1
    classe = resultado(:, tamanhoResultado(2)); 
  else
    rotulos = resultado(:, tamanhoResultado(2));
    rotulo1 = 0;
    rotulo2 = 0;
      
    for i = 1:tamanhoResultado(1)
     if rotulos(i) == 0
       rotulo1++;
     else
       rotulo2++;
     endif
    endfor 
   
    if rotulo1 > rotulo2
      classe = 0;
    else
      classe = 1;
    endif
  endif
  
endfunction

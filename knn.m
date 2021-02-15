function [classe] = knn(base, paciente, k)
  tamanhoBase = size(base);
  classe1 = base(1:500, :); #Os 500 primeiros nao sao diabeticos
  classe2 = base(501:768, :); 
  #Pega todas as distancias e guarda em vetorDist
  for i = 1:tamanhoBase(1)
    # 7 colunas da base (oitava eh a classe)
    vetorDist(i) = DISTEUCLIDIANA(base(i, 1:7), paciente);
  endfor
  #Distancias com rotulos
  distRotulos = [vetorDist(:), base(:, tamanhoBase(2))];
  distRotulosOrdenado = sortrows(distRotulos);
  #Pega K linhas com as menores distancias e seus rotulos
  resultado = distRotulosOrdenado(1:k, :);
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
     end
    end 
    if rotulo1 > rotulo2
      classe = 0;
    else
      classe = 1;
    end
  end
end

## Limpa janela de comandos.
clc;

## Carrega a base.
carregar_base;

## Normalizar base.  <-------------- KNN funcionando para base nao normalizada
## base = normalizacaoLinear(base);

tamanhoBase = size(base); ## Pega o numero de linhas e numero de colunas.
base = sortrows(base, 8); ## Ordena a base baseado na ultima coluna.

## Le as informacoes do paciente e guarda em um vetor.
paciente = infoPaciente();

## Chama a funcao KNN passando a base, as informacoes
## do paciente e passa o valor de K, neste caso eh 5.
if ((ans = knn(base, paciente, 5)) == 0)
  disp("Positivo, diabetico.");
else
  disp("Negativo, nao diabetico.");
endif

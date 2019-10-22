#Limpa janela de comandos
clc

#Carrega a base
carregar_base

#Normalizar base
base = normalizacaoLinear(base);

fprintf('Base: \n');
disp(base);

#Le as informa��es do paciente e guarda em um vetor
Objeto = infoPaciente();

k = input('Valor de k = ');

[rotuloPredito] = knn(base, k, Objeto);

if (rotuloPredito == 0)
  disp("De acordo com a base de dados, nao eh diabetico.");
else
  disp("De acordo com a base de dados, eh diabetico.");
endif
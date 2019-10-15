#Limpa janela de comandos
clc

#Carrega a base
carregar_base

#Normalizar base
base = normalizacaoLinear(base);

tamanhoBase = size(base); #Pega o n� de linhas e n� colunas
base = sortrows(base, tamanhoBase(2)); #Ordena a base baseado na �ltima coluna

#Le as informa��es do paciente e guarda em um vetor
X = infoPaciente();

if ((ans = knn(base, X, 9)) == 0)
  disp("De acordo com a base de dados, nao eh diabetico.");
else
  disp("De acordo com a base de dados, eh diabetico.");
endif

#Plotando o dado informado no gr�fico
plot(X(:,2), X(:,5), 'g+');
hold off
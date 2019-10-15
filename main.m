#Carrega a base
carregar_base

tamanhoBase = size(base); #Pega o n° de linhas e n° colunas
base = sortrows(base, tamanhoBase(2)); #Ordena a base baseado na última coluna

#Le as informações do paciente e guarda em um vetor
X = infoPaciente();

if ((ans = knn(base, X, 9)) == 0)
  disp("De acordo com a base de dados, nao eh diabetico.");
else
  disp("De acordo com a base de dados, eh diabetico.");
endif

#Plotando o dado informado no gráfico
plot(X(:,2), X(:,5), 'g+');
hold off
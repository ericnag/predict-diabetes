## Limpa janela de comandos.
clc;
## Carrega a base.
carregar_base;
tamanhoBase = size(base); ## Pega o numero de linhas e numero de colunas.
base = sortrows(base, 8); ## Ordena a base baseado na ultima coluna.
rotulos = base(:, 8);

disp("---------- TESTE INDIVIDUAL ----------\n");

## Le as informacoes do paciente e guarda em um vetor.
paciente = infoPaciente();

## Junta os dados do paciente com a base para normalizar
## Depois retira os dados do paciente para jogar na funcao KNN
base = [base; paciente];
base = normalizacaoLinear(base(:, 1:7));
paciente = base(769, 1:7);
base = [base(1:768,:), rotulos];

k = input("Digite o valor de k: ");

## Chama a funcao KNN passando a base, as informacoes

if ((ans = knn(base, paciente, k)) == 1) ##base(769, 1:7): dados do paciente
  disp("Resultado: POSITIVO\n");
else
 disp("Resultado: NEGATIVO\n");
endif

disp("---------- TESTE UTILIZANDO 60% DOS DADOS DA PRÓPRIA BASE ----------");

for k = 2:6
  testeResultado(base, 730, k); ##768*(60/100) =~ 460 -> 60% da base
                                ##460/2 = 230
                                ##500-230 = 270
                                ##500+230 = 730
endfor

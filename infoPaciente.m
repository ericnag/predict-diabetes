function [paciente] = infoPaciente()
  #Pega as informações do paciente
  n_gravidez = input("nGravidez: "); 
  glicose = input("Glicose: ");
  p_sanguinea = input("Pressao Sanguinea: ");
  e_pele = input("Espessura da Pele: "); 
  insulina = input("Insulina: ");
  peso = input("Peso: ");
  altura = input("Altura: ");
  imc = peso/(altura^2);
  idade = input("Idade: ");
  paciente = [n_gravidez, glicose, p_sanguinea, e_pele, insulina, imc, idade];
endfunction

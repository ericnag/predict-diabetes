function [paciente] = infoPaciente()
  n_gravidez = input("nGravidez: "); 
  glicose = input("Glicose: ");
  p_sanguinea = input("Pressao Sanguinea: ");
  e_pele = input("Espessura da Pele: "); 
  insulina = input("Insulina: ");
  imc = input("IMC: ");
  idade = input("Idade: ");
  paciente = [n_gravidez, glicose, p_sanguinea, e_pele, insulina, imc, idade];
endfunction

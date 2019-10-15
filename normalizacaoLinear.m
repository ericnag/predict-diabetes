function [baseNormalizada] = normalizacaoLinear(baseDados)
%f(x) = (x-min)/(max-min);
[l, col] = size(baseDados);
%normalizacao linear
for i=1:col %A normalização de uma matriz deve ser realizada por coluna
 maior = max(baseDados(:,i));
 menor = min(baseDados(:,i));
 denom = (maior-menor);
 if(denom==0)
 denom=1;
 end
 baseDados(:,i)= (baseDados(:,i)-menor)/denom;
end
baseNormalizada = baseDados;
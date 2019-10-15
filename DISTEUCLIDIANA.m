function [d] = DISTEUCLIDIANA(prototipo, objeto)

d = sqrt(sum((objeto - prototipo).^2));
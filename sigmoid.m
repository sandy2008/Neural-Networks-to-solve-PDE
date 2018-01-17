function [result] = sigmoid(x)
  result = 1.0 ./ (1.0 + exp(-x));
 end
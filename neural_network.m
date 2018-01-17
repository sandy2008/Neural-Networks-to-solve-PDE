function [y] = neural_network(x,W1,W2)
a1 = sigmoid(x*W1)
y = a1*W2
end
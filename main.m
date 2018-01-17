nx = 10;
ny = 10;

dx = 1./nx;
dy = 1./ny;

x_space = linspace(0, 1, nx);
y_space = linspace(0, 1, ny);


surface = zeros([ny, nx]);




W1 = randn(2, 10)
W2 = randn(10, 1)
lmb = 0.001

a = loss_function(W1,W2, x_space, y_space)



for i = 1:1:10
  for j = 1:1:10
    net_outt = neural_network([x_space(i), y_space(j)],W1(:,i),W2(j,:))
	surface(i,j) = psy_trial([x_space(i),y_space(j)],net_outt)
   end
end        


mesh(surface)



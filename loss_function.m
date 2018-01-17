function loss_sum = loss_function(W1,W2,x,y)
loss_sum = 0
for i = 1:1:10
for j = 1:1:10
input_point = [x(i),y(j)]
net_out = neural_network(input_point,W1,W2)
gradient_of_trial_d2x= NumHessian(@psy_trial,input_point,net_out)(1,1)
gradient_of_trial_d2y= NumHessian(@psy_trial,input_point,net_out)(2,2)
err_sqr=(gradient_of_trial_d2x+gradient_of_trial_d2y)**2
loss_sum =err_sqr+loss_sum
endfor
endfor
endfunction
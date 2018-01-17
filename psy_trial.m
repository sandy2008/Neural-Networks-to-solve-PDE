function [result] = psy_trial(x,net_out)
result =  A(x(1),x(2)) + x(1) .* (1 - x(1)) .* x(2) .* (1 - x(2)) .* net_out
end
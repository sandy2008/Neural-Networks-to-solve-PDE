function g = analytic_solution(x)
  g = (1 / (exp(pi) - exp(-pi))) * sin(pi * x(1)) *  (exp(pi * x(2)) - exp(-pi * x(2)))

        endfunction
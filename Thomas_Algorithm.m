## This algorithm implements the Thomas_Algorithm, an LU
## decomposition method for tridiagonal systems.

function y = Thomas_Algorithm (e, f, g, r)
  ## Decomposition
  n = length(f);
  for k = 2 : n;
    e(k) = e(k)/f(k-1);
    f(k) = f(k)-e(k)*g(k-1);
  endfor
  
  ## Forward Substitution
  for k = 2 : n;
    r(k) = r(k) - e(k)*r(k-1);  
  endfor
  
  # Back Substitution
  x(n) = r(n)/f(n);
  for k = n-1:-1:1;
    x(k) = (r(k)-g(k)*x(k+1))/f(k);  
  endfor
  display(x)
endfunction

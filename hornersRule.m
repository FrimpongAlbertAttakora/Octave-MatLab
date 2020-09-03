% Horner's rule to evaluate the value of a polynomial at 'x'
% Define 'a' as an array
% 'n' is the degree of the polynomial
function horns = hornersRule(x, n, arr)
  a = [];
  for i = 1:arr
    a(i) = input('Enter the values of a: ')
  endfor
  r = a(1);
  for i = 2:n+1;
    r = a(i)+(r*x);
  endfor
  horns = r
endfunction

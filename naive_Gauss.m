# This is naive Gaussian Elemination to solve systems of linear 
# eqautions.

function y = naive_Gauss (a,b)
  n = length(a)
  #Forward Elimination
  for k = 1:n-1
    for i = k+1:n
      factor = a(i,k)/a(k,k)
      for j = k+1:n
        a(i,j) = a(i,j)-(factor*a(k,j))
      endfor
      b(i) = b(i) - (factor*b(k))
    endfor
   endfor
   #Back Substitution
   x(n) = b(n)/a(n,n)
   for i = n-1:-1:1
    sum = b(i)
    for j = i+1:n
      sum = sum-(a(i,j)*x(j))  
    endfor
    x(i) = sum/a(i,i)
   endfor
endfunction
## This is an algorithm to implement partial pivoting

function retval = partialPivoting (a,b)
  n = length(a)
  #comparing the pivot element with the elements below it.
  for k = 1:n-1
    p = k
    big = abs(a(k,k))
    for ii = k+1 : n
      dummy = abs(a(ii,k))
      if dummy > big;
        big = dummy
        p = ii
      endif
    endfor
    #switching rows if any element below is greater
    if p ~= k;
      for jj = k : n
        dummy = a(p,jj)
        a(p,jj) = a(k,jj)
        a(k,jj) = dummy
      endfor
    endif
    dummy = b(p)
    b(p) = b(k)
    b(k) = dummy
  endfor
  retval = a
endfunction

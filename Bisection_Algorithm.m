function bisect = Bisection_Algorithm(xl, xu, es, imax, xr, iter, ea)
  iter = 0;
  fl = dragCo(xl);
  while (1)
    xrold = xr;
    xr = (xl+xu)/2;
    fr = dragCo(xr);
    iter = iter+1;
    if xr ~= 0;
      ea = abs((xr - xrold)/xr)*100
    endif
    test = fl * fr;
    if test < 0;
      xu = xr;
    elseif test > 0;
      xl = xr;
      fl = fr;
    else
      ea = 0;
    end
    if iter >= imax; % break condition 'ea < es' not working and must be checked.
      break 
    end
  endwhile
  bisect = xr 
endfunction

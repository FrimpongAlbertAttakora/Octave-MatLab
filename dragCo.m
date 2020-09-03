function yy = dragCo(c)
  t=10;
  g=9.8; 
  v=40; 
  m=68.1;
  y = ((g*m)/c)*(1-exp(-(c/m)*10))-40;
  yy = y
endfunction

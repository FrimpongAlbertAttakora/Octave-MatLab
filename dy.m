function dydt = dy(t, v, m, cd)
  g = 9.8;
  dydt = g - (cd / m) * v;
endfunction
function yy = euler(dt, ti, tf, yi, m, cd)
  t = ti;
  y = yi;
  h = dt;
  while (1)
    if t + dt > tf
      h = tf - t;
    endif
    dydt = dy(t, y, m, cd);
    y = y + dydt * h;
    t = t + h;
    if t >= tf, break, end
  endwhile
  yy = y;
endfunction
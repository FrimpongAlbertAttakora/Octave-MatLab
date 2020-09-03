%Plot of exponential functions.
x = (-4:0.25:5);
y1 = 2.^x;
y2 = 3.^x;
%plot(x,y1,'--',x,y2,'-')

% Plot of a trigonomtry function.
x = (0:0.025:5);
y = sin(10*x)+cos(3*x);
plot(x,y,'r--*')


%This is a simple program to summ array values.
%The inline function sum can also be use to find the sum.
x = [2 6 5 12 5];
a = 0;
for i = 1:length(x)
  a = a + x(i);
  disp(a)
end

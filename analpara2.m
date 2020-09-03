%A program to compute the velocity
g=9.8;
m=input('Enter mass in Kg: ');
cd=12.5;
tf=2;
v=g*m/cd*(1-exp(-cd/m*tf))

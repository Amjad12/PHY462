% Binding Energy using the Liquid Drop Model
% PHY462 (prof. J. Comfort)  / Spring 2016/ Arizona State University 
% Author: Amjad Alqahtani
% 1/21/2016
clear 
clc

av= 15.56;
as= 17.23;
ac = .697;
aa= 93.14/4;
ap = 12;

prompt = 'What is A ';
A = input(prompt)
prompt = 'What is Z ';
Z = input(prompt)


N = A -Z 
if (mod(Z,2) == 0 && mod(N,2)== 0)
    D = -ap*A^(-.5);
elseif (mod(Z,2) ~= 0 && mod(N,2)~= 0)
    D = ap*A^(-.5);
else 
    D=0;
end
    



B = av*A - as*A^(2/3) -ac*Z*(Z-1)/(A^(1/3)) - aa*(N-Z)^2/A +D

A = A-1; 
Bn  = av*A - as*A^(2/3) -ac*Z*(Z-1)/(A^(1/3)) - aa*(N-Z)^2/A +D

Z = Z -1; 
Bp = av*A - as*A^(2/3) -ac*Z*(Z-1)/(A^(1/3)) - aa*(N-Z)^2/A +D

En = B -Bn

Ep = B - Bp
% Author: Amjad Alqahtani
% PHY462 (prof. J. Comfort) / Spring 2016/ Arizona State University 
% This program asks the user to enter the value of A (the mass number) and 
% Z (the atomic number) and returns the corresponding binding energy based
% on the Liquid Drop Model
clear 
clc

% declare the coefficients 
av= 15.56;
as= 17.23;
ac = .697;
aa= 93.14/4; % divided by 4 to match the formula in Dr.Comfort's notes
ap = 12;

% ask user to enter the A and Z values 
prompt = 'What is A ';
A = input(prompt)
prompt = 'What is Z ';
Z = input(prompt)

% calc N (number of neutrons) 
N = A -Z 

% calc the delta value
% if Z and A are both even 
if (mod(Z,2) == 0 && mod(N,2)== 0)
    D = -ap*A^(-.5);
% if Z and A are both odd
elseif (mod(Z,2) ~= 0 && mod(N,2)~= 0)
    D = ap*A^(-.5);
% if one of them is even and the other is odd 
else 
    D=0;
end
    


% cal the binding energy based on the based on the Liquid Drop Model
B = av*A - as*A^(2/3) -ac*Z*(Z-1)/(A^(1/3)) - aa*(N-Z)^2/A +D

A = A-1; 
Bn  = av*A - as*A^(2/3) -ac*Z*(Z-1)/(A^(1/3)) - aa*(N-Z)^2/A +D

Z = Z -1; 
Bp = av*A - as*A^(2/3) -ac*Z*(Z-1)/(A^(1/3)) - aa*(N-Z)^2/A +D

En = B -Bn

Ep = B - Bp
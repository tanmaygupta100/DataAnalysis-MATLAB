%{
***************************************************************************
File name: polynomial.m
Programmmer name: Tanmay Gupta
Date created: 06/21/2020
Date of last revision: 06/21/2020
Details of the revision: None
Short description: This function will create polynomials for hw_week_5_P3.m
***************************************************************************
%}


function Equation = polynomial()
%store the coefficients of the polynomial that have been entered 
    % in a vector.  Return coefficients as a vector called p
%this vector should be global so that other functions can use it
global p;
p=[]; %creates an empty polynomial
degree=input('Please enter the degree of the polynomial: ');
j=degree; %this is used for correct message display below

degree=degree+1;
for i=1:1:degree
    fprintf('Please enter the coefficient of power %d: ',j);
    p(i)=input(' ');
    j=j-1;
end
%note the highest degree coefficient is stored in position 1
%and the next one is position 2 and so on.

%Calculation:
syms x
i=1;
y=0;
while i<=degree
        y= y+p(i)*x^(i-1);
        i=i+1;
end

Equation=y

end
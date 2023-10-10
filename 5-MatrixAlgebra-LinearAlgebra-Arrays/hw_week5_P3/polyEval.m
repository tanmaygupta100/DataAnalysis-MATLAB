%{
***************************************************************************
File name: polyEval.m
Programmmer name: Tanmay Gupta
Date created: 06/21/2020
Date of last revision: 06/21/2020
Details of the revision: None
Short description: This function will create polynomials for hw_week_5_P3.m
***************************************************************************
%}

%Calculation:
function result = polyEval(point)
global p;
global x;

%Enter the point to calculate value of the polynomial at:
x=point;
disp('The function value at the entered point is: ')
result = sum(p*point)
end
%{
***************************************************************************
File name: polyRoots.m
Programmmer name: Tanmay Gupta
Date created: 06/21/2020
Date of last revision: 06/21/2020
Details of the revision: None
Short description: This function will find the root for hw_week_5_P3.m
***************************************************************************
%}

%Calculation:
function r = polyRoots(p)

%Evaluate roots
global p;
global x;

disp('The roots of given polynomial are: ')

r= roots(p)

end
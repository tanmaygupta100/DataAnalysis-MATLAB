%{
***************************************************************************
File name: hw_week6_12_20.m
Programmmer name: Tanmay Gupta
Date created: 06/23/2020
Date of last revision: 06/24/2020
Details of the revision: Added some notes.
Short description: Define symbolic equation for each equation, and solve.
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate define two symbolic equations and solve them.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
syms x y
Eq1= input('Please enter your first equation: ');
% Eq1= first equation
Eq2= input('Please enter your second equation: ');
% Eq2= second equation

%Calculation:
XX = (solve(Eq1,Eq2));
% XX= solutions of equations

%Displaying the answer:
x = real(double(XX.x))
y = real(double(XX.y))
% double changes variable type
% real gives only real numbers


%Sample run appended from Matlab's command window:
%{
This program will calculate define two symbolic equations and solve them.
 
Please enter your first equation: x^2 + y^2 == 42
Please enter your second equation: x + 3*y + 2*y^2 == 6

x =

    6.4782
    6.3322
   -6.2162
   -5.5942


y =

   -0.1813
   -1.3796
    1.8327
   -3.2718
%}
%{
***************************************************************************
File name: quadraticFormulaInputCalculator.m
Programmmer name: Tanmay Gupta
Date created: 05/31/2020
Date of last revision: 05/31/2020
Details of the revision: None
Short description: Calculate the quadratic formula from inputs
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will create a plot of given quadratic equation.')
%disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
a= input('Enter the a-value >> ');
b= input('Enter the b-value >> ');
c= input('Enter the c-value >> ');
xMax= input('Enter the maximum x-value >> ');
xMin= input('Enter the minimum x-value >> ');
x=[xMin:xMax];

%Calculation:
y= a.*x.^2 + b.*x + c;
%This is the quadratic equation

%Plotting the result:
plot(x,y)
title('Quadratic equation')
xlabel('X-axis')
ylabel('Y-axis')
grid on

%Sample run appended from Matlab's command window:
%{
This program will create a plot of given quadratic equation.
Enter the a-value >> 5
Enter the b-value >> 2
Enter the c-value >> 4
Enter the maximum x-value >> 0
Enter the minimum x-value >> 10
%}

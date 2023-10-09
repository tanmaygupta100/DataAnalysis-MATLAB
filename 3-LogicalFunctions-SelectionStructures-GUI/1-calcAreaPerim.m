%{
***************************************************************************
File name: calcAreaPerim.m
Programmmer name: Tanmay Gupta
Date created: 06/07/2020
Date of last revision: 06/07/2020
Details of the revision: None
Short description: P1-Week 3: Calculate area and perimeter of a right triangle
based on given lengths of two legs using a function
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate the area and perimeter of a right triangle.')
disp('The results will be based on given lengths of two legs.')
disp(' ') % I included a space to make the program appear cleaner at the end


%Function displaying the results:
function result=calc(Area, Perimeter)
% This function calculates 

%Variable Initialization:
a=input('enter the length of the first leg: ');
% a= first leg length
b=input('Enter the length of the second leg: ');
% b= second leg length

%Calculation:
Area= a*b/2
Perimeter = a+b+sqrt((a^2)+(b^2))
end

%Sample run appended from Matlab's command window:
%{

%}

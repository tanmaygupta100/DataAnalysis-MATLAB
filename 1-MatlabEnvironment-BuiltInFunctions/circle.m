%{
*********************************************
file name: circle.m
programmer name:
date created: 5/26/20
date of last revision: 5/26/20
details of the revision: created
short description: Calculating the area of a circle
*********************************************
%}

% program description: this is intended for the user
disp ('This program will calculate and display the area of a circle.');

% list of variables used with a short description
% radius will be used to store radius
% pi=3.14156 is an internally defined variable in Matlab
% area will be used to store the calculated value of the circle's area

% Variable initialization
radius=input('Please enter a value for the radius>> ');

% Calculation
area=pi*radius*radius; % area=pi*radius^2;

% Displaying the result
fprintf('The area of the circle with radius %0.2f  is %0.2f \n',radius, area);
%the percentage identifies a placeholder
%the f identifies a number that will be in the float format. Float format means decimal place accuracy.
%the \n means that the program will go down one line


%sample run appended from the Matlab's Command Window
%{
This program will calculate and display the area of a circle.
Please enter a value for the radius>> 10.21
The area of the circle with radius 10.21 is 327.49
%}

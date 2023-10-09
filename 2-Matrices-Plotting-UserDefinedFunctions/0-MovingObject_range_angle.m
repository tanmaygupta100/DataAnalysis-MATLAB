%{
********************************************************************************
File name: MovingObject_range_angle.m
Programmmer name: Tanmay Gupta
Date created: 06/01/2020
Date of last revision: 06/01/2020
Details of the revision: None
Short description: Calculate angle for maximum range of moving object
********************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate the approximate angle for maximum range of an airborne object.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
v0= input('Enter the inital velocity (in meters/seconds)>> ');
theta= [0:pi/25:pi/2];
g= 9.81;
% Gravity constant
disp(' ')

%Calculation:
Range= v0^2/g*sin(2*theta);
% This calculates the range formula with given variables
table= [theta',Range'];
% table to display all values

%Displaying the result:
fprintf('The maximum angle %0.3f radians of the following value yields a maximum range of %0.3f m from the following table.',max(theta),max(Range));
disp(' ')
disp('Total Angles:  Total Ranges:')
disp(table)

%Sample run appended from Matlab's command window:
%{
This program will calculate the approximate angle for maximum range of an airborne object.
 
Enter the inital velocity (in meters/seconds)>> 2
 
The maximum angle 1.508 radians of the following value yields a maximum range of 0.407 m from the following table. 
Total Angles:  Total Ranges:
         0         0
    0.1257    0.1014
    0.2513    0.1964
    0.3770    0.2791
    0.5027    0.3443
    0.6283    0.3878
    0.7540    0.4069
    0.8796    0.4005
    1.0053    0.3689
    1.1310    0.3142
    1.2566    0.2397
    1.3823    0.1501
    1.5080    0.0511
%}

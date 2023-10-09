%{
***************************************************************************
File name: oscillating_spring.m
Programmmer name: Tanmay Gupta
Date created: 05/27/2020
Date of last revision: 05/27/2020
Details of the revision: None
Short description: Calculate displacement at time of oscillating spring
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate the displacement of the oscillating spring at given time by user.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
A= input('Enter the maximum displacement in centimeters>> ');
% A= maximum displacement
w= input('Enter the angular frequency in radians by seconds>> ');
% w= angular frequency
t= [0:10];
% t= time in seconds, laid out in columns
disp(' ')

%Calculation:
x= A*cos(w*t);
% x= displacement at time
table= [t',x'];
% table= table of values in columns

%Displaying the result:
fprintf('An oscillating spring with a maximum displacement of %0.1f and angular frequency %0.1f will have the following displacements from 0 to 10 seconds: ',A,w);
disp(' ')
disp('    Time:    Displacement:')
% Creating these titles shows the table values in an organized way
disp(table)
% This allows me to display the table variable with its values that were calculated


%Sample run appended from Matlab's command window:
%{
This program will calculate the displacement of the oscillating spring at given time by user.
 
Enter the maximum displacement in centimeters>> 4
Enter the angular frequency in radians by seconds>> 0.6
 
An oscillating spring with a maximum displacement of 4.0 and angular frequency 0.6 will have the following displacements from 0 to 10 seconds:  
    Time:    Displacement:
         0    4.0000
    1.0000    3.3013
    2.0000    1.4494
    3.0000   -0.9088
    4.0000   -2.9496
    5.0000   -3.9600
    6.0000   -3.5870
    7.0000   -1.9610
    8.0000    0.3500
    9.0000    2.5388
   10.0000    3.8407
%}

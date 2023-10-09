%{
***************************************************************************
File name: inputAreaCalculator.m
Programmmer name: Tanmay Gupta
Date created: 05/31/2020
Date of last revision: 05/31/2020
Details of the revision: None
Short description: Calculate triangle areas with size variations from input
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate the area of a group of varying triangles.')
disp('The user will enter the upper and lower limits of the base and height values.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
bMax= input('Enter the upper limit for the base length (in meters)>> ');
% Maximum base length value
bMin= input('Enter the lower limit for the base length (in meters)>> ');
% Minumum base length value
hMax= input('Enter the upper limit for the height (in meters)>> ');
% Maximum height value
hMin= input('Enter the lower limit for the height (in meters)>> ');
% Minimum height value

%Calculation:
B=bMin:bMax;
H=hMin:hMax;
[Bases,Heights]=meshgrid(B,H)
Area=(1/2)*Bases.*Heights
% Here, I am setting up arrays to be created with the numbers equally spaced between the input values.
% B and H are different from Bases and Heights, because Bases and Heights are used to display the answer
% Setting up a meshgrid allows me to equally carry out my area calculation of the arrays


%Sample run appended from Matlab's command window:
%{
This program will calculate the area of a group of varying triangles.
The user will enter the upper and lower limits of the base and height values.
 
Enter the upper limit for the base length (in meters)>> 10
Enter the lower limit for the base length (in meters)>> 0
Enter the upper limit for the height in meters)>> 6
Enter the lower limit for the height (in meters)>> 2

Bases =

     0     1     2     3     4     5     6     7     8     9    10
     0     1     2     3     4     5     6     7     8     9    10
     0     1     2     3     4     5     6     7     8     9    10
     0     1     2     3     4     5     6     7     8     9    10
     0     1     2     3     4     5     6     7     8     9    10


Heights =

     2     2     2     2     2     2     2     2     2     2     2
     3     3     3     3     3     3     3     3     3     3     3
     4     4     4     4     4     4     4     4     4     4     4
     5     5     5     5     5     5     5     5     5     5     5
     6     6     6     6     6     6     6     6     6     6     6


Area =

  Columns 1 through 9

         0    1.0000    2.0000    3.0000    4.0000    5.0000    6.0000    7.0000    8.0000
         0    1.5000    3.0000    4.5000    6.0000    7.5000    9.0000   10.5000   12.0000
         0    2.0000    4.0000    6.0000    8.0000   10.0000   12.0000   14.0000   16.0000
         0    2.5000    5.0000    7.5000   10.0000   12.5000   15.0000   17.5000   20.0000
         0    3.0000    6.0000    9.0000   12.0000   15.0000   18.0000   21.0000   24.0000

  Columns 10 through 11

    9.0000   10.0000
   13.5000   15.0000
   18.0000   20.0000
   22.5000   25.0000
   27.0000   30.0000
%}

%{
***************************************************************************
File name: bacteria.m
Programmmer name: Tanmay Gupta
Date created: 05/28/2020
Date of last revision: 05/29/2020
Details of the revision: Added some notes explaining my steps
Short description: Calculate the number of bacteria based on time passed
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate the number of bacteria that grows every hour (given by user).')
disp(' ') % This gives a space to make my program come out cleaner

%Variable initialization:
e= 2.71828;
% e is the irrational number 2.71828, known as Euler's number.
t= input('Enter the time that the bacteria culture will be refrigerated for: ');
% t is the time, in hours, that the cuture has been refrigerated

%Calculation:
B= 300000*(e^(-0.032*t));
% B is the number of bacteria found after the calculation by the program

%Displaying the result:
fprintf('The number of bacteria after %0.2f hours will be %0.0f.',t,floor(B));
% %0.2f allows the program to show more specific times in-case if the user wanted to be more specific, such as 10.5 for 10 hours 30 minutes.
% %0.0f leaves no decimals, while floor(B) rounds down to the closest whole number

%Sample run appended from Matlab's command window:
%{
This program will calculate the number of bacteria that grows every hour (given by user).
 
Enter the time that the bacteria culture will be refrigerated for: 10
The number of bacteria after 10.00 hours will be 217844.
%}

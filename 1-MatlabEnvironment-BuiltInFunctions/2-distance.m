%{
*****************************************************************
file name: distance.m
programmer name: Tanmay Gupta
date created: 05/26/2020
date of last revision 05/26/2020
details of the revision: none
short description: Calculating distance between two coordinates
*****************************************************************
%}

%Program description: this is intended for the user
disp('This program will calculate and display the distance between two coordinates.');

%List of variables used with a short description:
%x1 will be the first coordinate's x-value
%y1 will be the first coordinate's y-value
%x2 will be the second coordinate's x-value
%y2 will be the second coordinate's y-value

%Variable initialization
x1=input('Please enter a value for the x-value of the first coordinate>>  ');
y1=input('Please enter a value for the y-value of the first coordinate>>  ');
x2=input('Please enter a value for the x-value of the second coordinate>>  ');
y2=input('Please enter a value for the y-value of the second coordinate>>  ');

%Calculation
distance=sqrt((x1 - x2)^2 + (y1 - y2)^2);

%Displaying the result
fprintf('The distance between the two coordinates ( %0.2f , %0.2f ) and ( %0.2f , %0.2f ) is %0.2f \n', x1, y1, x2, y2, distance);


%Sample run appended from Matlab's Command Window
%{
This program will calculate and display the distance between two coordinates.
Please enter a value for the x-value of the first coordinate>>  2.1
Please enter a value for the y-value of the first coordinate>>  2.1
Please enter a value for the x-value of the second coordinate>>  2.5
Please enter a value for the y-value of the second coordinate>>  -4.2
The distance between the two coordinates ( 2.10 , 2.10 ) and ( 2.50 , -4.20 ) is 6.31 
%}

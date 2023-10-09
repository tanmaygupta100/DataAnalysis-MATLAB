%{
***************************************************************************
File name: hw_week2_6_3.m
Programmmer name: Tanmay Gupta
Date created: 05/31/2020
Date of last revision: 05/31/2020
Details of the revision: None
Short description: Calculate how much a current investment will be worth in
the future, with a constant interest rate. Used with future_value.m
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate how much a current investment will be worth over time, while subjected to a constant interest rate.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
PV= 1000;
% PV is the present value of investment
I= 0.005;
% I is the interest rate per month
N= 10*12;
% N is the interest compounded monthly

%Displaying the result:
disp('The future value of an investment of $1000, with an interest rate of 0.5%, compounded monthly:');

%Calculation:
FV=future_value(PV,I,N)
% This allows the FV value to be printed from the future_value.m file


%Sample run appended from Matlab's command window:
%{
This program will calculate how much a current investment will be worth over time, while subjected to a constant interest rate.
 
The future value of an investment of $1000, with an interest rate of 0.5%, compounded monthly:

FV =

   1.8194e+03


FV =

   1.8194e+03
%}

%{
***************************************************************************
File name: calcGrossNetPay.m
Programmmer name: Tanmay Gupta
Date created: 06/08/2020
Date of last revision: 06/08/2020
Details of the revision: None
Short description: Return gross pay and net pay based on hours worked
***************************************************************************
%}


%Calculation:
function result=Pay(grossPay,netPay)
% This function calculates the gross pay and net pay

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate your gross pay and net pay based on hours worked.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
hr= input('Enter the number of hours worked>> ');
% hr= Time in hours

if hr<=40 & hr>=0
    grossPay= (20*hr)
    netPay= (20*hr)*0.85-50
elseif hr>40 & hr>=0
    grossPay= 20*(hr*1.5)
    netPay= 20*(hr*1.5)*0.85-50
    %fprintf('Your gross pay is $ %2 and your net pay is $ %2',grossPay,netPay);
else
    disp('This value is invalid. Exit the function and try again.')
    % Displaying the result if invalid input is entered
end
end


%Sample run appended from Matlab's command window:
%{
CASE i:
This program will calculate your gross pay and net pay based on hours worked.
 
Enter the number of hours worked>> 30

grossPay =

   600


netPay =

   460



CASE ii:
This program will calculate your gross pay and net pay based on hours worked.
 
Enter the number of hours worked>> 50

grossPay =

        1500


netPay =

        1225
%}

%{
***************************************************************************
File name: weatherReport.m
Programmmer name: Tanmay Gupta
Date created: 06/07/2020
Date of last revision: 06/07/2020
Details of the revision: None
Short description: This program will declare how the weather is like, based
on user-input of the temperature value in fahrenheit.
***************************************************************************
%}


%Displaying the result using elseif and the functon:
function temp(T)

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will tell how the outside air temperature is like.')
disp(' ')

%User input of temperature as a scalar value:
T=input('Please enter the temperature in fahrenheit: ');
disp(' ')

if T > 80
    fprintf('You can just wear shorts.')
    disp(' ')
elseif T >= 60
    fprintf('It is a beautiful day.')
    disp(' ')
else
    fprintf('You should wear a jacket or coat.')
    disp(' ')
end
end

%Sample run appended from Matlab's command window:
%{
This program will tell how the outside air temperature is like.
 
Please enter the temperature in fahrenheit: 74.4
 
It is a beautiful day. 
%}

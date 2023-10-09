%{
***************************************************************************
File name: quiz_3.m
Programmmer name: Tanmay Gupta
Date created: 06/09/2020
Date of last revision: 06/09/2020
Details of the revision: None
Short description: Quiz 3 - Calculate shipping charge based on distance and
rates using calcCost.m . calcCost.m CODE IS LOCATED AT THE BOTTOM OF THIS.
***************************************************************************
%}

function quiz_3()
%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate the total shipping charge on your package.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
weight= input('Enter the weight of your package (in kg)>> ');
% Weight of object
distance= input('Enter the distance your package will be shipped (in miles)>> ');
% Distance the object travels
disp(' ')

%Calling over the function and displaying the result:
calcCost(weight,distance);
% This calls over calculation results from calCost().m
end


%MULTIPLE sample runs appended from Matlab's command window:
%{
IF VALUES ARE APPROPRIATE:
This program will calculate the total shipping charge on your package.
 
Enter the weight of your package (in kg)>> 15
Enter the distance your package will be shipped (in miles)>> 1456
 
Total shipping charge: $13.98


IF WEIGHT IS TOO HIGH:
This program will calculate the total shipping charge on your package.
 
Enter the weight of your package (in kg)>> 45
Enter the distance your package will be shipped (in miles)>> 1575
 
The maximum weight allowed is 20 kg.


IF WEIGHT IS TOO LOW:
This program will calculate the total shipping charge on your package.
 
Enter the weight of your package (in kg)>> -0.5
Enter the distance your package will be shipped (in miles)>> 45
 
That weight is invalid. Please try again.


IF DISTANCE IS TOO LOW
This program will calculate the total shipping charge on your package.
 
Enter the weight of your package (in kg)>> 12
Enter the distance your package will be shipped (in miles)>> -0.3
 
That distance is invalid. Please try again.
%}

%calcCost.m code:
%{
%{
***************************************************************************
File name: calCost().m
Programmmer name: Tanmay Gupta
Date created: 06/09/2020
Date of last revision: 06/09/2020
Details of the revision: None
Short description: Does the calculations for quiz_3.m
***************************************************************************
%}

function calcCost(weight,distance)
%Clear the workspace and command windows
%clear, clc

%Program description:
% This program does the calculations based on the inputs from quiz_3.m

%Variable initialization:
d= distance/500;
% Variable d brings the user input for distance

%Calculation:
if distance <0
    disp('That distance is invalid. Please try again.')
    disp(' ')

elseif weight <2 & weight >0
    cost= 1.10*d;
    fprintf('Total shipping charge: $%0.2f\n',cost);
elseif weight >=2 & weight <6
    cost= 2.20*d;
    fprintf('Total shipping charge: $%0.2f\n',cost);
elseif weight >=6 & weight <10
    cost= 3.70*d;
    fprintf('Total shipping charge: $%0.2f\n',cost);
elseif weight >=10 & weight <=20
    cost= 4.80*d;
    fprintf('Total shipping charge: $%0.2f\n',cost);
elseif weight <0
    disp('That weight is invalid. Please try again.');
    disp(' ')
else
    disp('The maximum weight allowed is 20 kg.');
    disp(' ')

end
end
%}

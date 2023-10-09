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

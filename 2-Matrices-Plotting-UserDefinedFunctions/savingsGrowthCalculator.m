%{
***************************************************************************
File name: savingsGrowthCalculator.m
Programmmer name: Tanmay Gupta
Date created: 05/31/2020
Date of last revision: 05/31/2020
Details of the revision: None
Short description: Calculate the growth of a user's savings over a time.
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate the growth of your savings in the next 30 years.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
P0=1000;
% Current balance
e=2.71828;
% Euler's constant
r=0.08;
% Growth constant, expressed as a decimal fraction
t=1:30;
% Time invested, ranging from 1 to 30 years


%Calculation:
P=P0*e*(r*t);
% P is the current balance
% The equation represents growth of savings

%Setting up the table graph:
Table=[t';,P';]
subplot(2,2,1)
plot(t,P)
grid on
title('Rectangular Coordinate Scale')
subplot(2,2,2)
semilogx(t,P)
grid on
title('X-axis Log Scale')
subplot(2,2,3)
semilogy(t,P)
grid on
title('Y-axis Log Scale')
subplot(2,2,4)
loglog(t,P)
title('X and Y Axes Log Scale')
grid on
% This will be able to plot the growth of your savings



%Sample run appended from Matlab's command window:
%{
This program will calculate the growth of your savings in the next 30 years.
 

Table =

   1.0e+03 *

    0.0010
    0.0020
    0.0030
    0.0040
    0.0050
    0.0060
    0.0070
    0.0080
    0.0090
    0.0100
    0.0110
    0.0120
    0.0130
    0.0140
    0.0150
    0.0160
    0.0170
    0.0180
    0.0190
    0.0200
    0.0210
    0.0220
    0.0230
    0.0240
    0.0250
    0.0260
    0.0270
    0.0280
    0.0290
    0.0300
    0.2175
    0.4349
    0.6524
    0.8698
    1.0873
    1.3048
    1.5222
    1.7397
    1.9572
    2.1746
    2.3921
    2.6095
    2.8270
    3.0445
    3.2619
    3.4794
    3.6969
    3.9143
    4.1318
    4.3492
    4.5667
    4.7842
    5.0016
    5.2191
    5.4366
    5.6540
    5.8715
    6.0889
    6.3064
    6.5239
%}

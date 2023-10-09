%{
***************************************************************************
File name: airbornObjectRange.m
Programmmer name: Tanmay Gupta
Date created: 05/28/2020
Date of last revision: 05/31/2020
Details of the revision: None
Short description: Calculate the entire range of an airborn object
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate the approximate value for the maximum range of an object being shot.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
initVel= input('Enter the velocity (in meters/seconds) of the object being shot>> ');
% initVel= Initial velocity of object in meters by seconds
grav= 9.81;
% g= Gravity constant
theta= [0:pi/100:pi/2];
% theta= Angles increasing from 0 to pi/2 in increments of pi/100
disp(' ')

%Calculation:
maxRange= ((initVel^2)/grav)*sin(2*theta);
% maxRange= Maximum range equation
table= [theta',maxRange'];

%Displaying the result:
fprintf('As the angles increase from 0 in increments of pi/100 to pi/2 at %0.2f m/s, the maximum range is found as follows:',initVel);
disp(' ')
disp('    Angles:  Maximum Range:')
disp(table)


%Sample run appended from Matlab's command window:
%{
This program will calculate the approximate value for the maximum range of an object being shot.
 
Enter the velocity (in meters/seconds) of the object being shot>> 15
 
As the angles increase from 0 in increments of pi/100 to pi/2 at 15.00 m/s, the maximum range is found as follows: 
    Angles:  Maximum Range:
         0         0
    0.0314    1.4401
    0.0628    2.8746
    0.0942    4.2977
    0.1257    5.7039
    0.1571    7.0875
    0.1885    8.4432
    0.2199    9.7656
    0.2513   11.0494
    0.2827   12.2896
    0.3142   13.4813
    0.3456   14.6198
    0.3770   15.7006
    0.4084   16.7195
    0.4398   17.6723
    0.4712   18.5554
    0.5027   19.3653
    0.5341   20.0988
    0.5655   20.7529
    0.5969   21.3251
    0.6283   21.8132
    0.6597   22.2152
    0.6912   22.5295
    0.7226   22.7549
    0.7540   22.8905
    0.7854   22.9358
    0.8168   22.8905
    0.8482   22.7549
    0.8796   22.5295
    0.9111   22.2152
    0.9425   21.8132
    0.9739   21.3251
    1.0053   20.7529
    1.0367   20.0988
    1.0681   19.3653
    1.0996   18.5554
    1.1310   17.6723
    1.1624   16.7195
    1.1938   15.7006
    1.2252   14.6198
    1.2566   13.4813
    1.2881   12.2896
    1.3195   11.0494
    1.3509    9.7656
    1.3823    8.4432
    1.4137    7.0875
    1.4451    5.7039
    1.4765    4.2977
    1.5080    2.8746
    1.5394    1.4401
    1.5708    0.0000
%}

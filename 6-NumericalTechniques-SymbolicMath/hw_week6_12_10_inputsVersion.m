%{
***************************************************************************
File name: hw_week6_12_10_inputsVersion.m
Programmmer name: Tanmay Gupta
Date created: 06/23/2020
Date of last revision: 06/23/2020
Details of the revision: None
Short description: Calculate answer using subs and syms functions
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate the length from pivot point to gravity in the pendulum.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
syms m g L I f
f= input('Enter the frequency: ');
% f= frequency
m= input('Enter the mass of the pendulum: ');
% m= mass of the pendulum
% L= distance from pivot point to center of gravity
I= input('Enter the inertia: ');
disp(' ');
% I= inertia
g= 9.81;
% g= gravity

%Calculation:
equation= 2*pi*f == sqrt(m*g*L/I);
solut= solve(equation,L);
answer = subs(solut,{m,g,I,f});

%Displaying the result:
fprintf('The length is %0.4f m\n',answer);

%Sample run appended from Matlab's command window:
%{
This program will calculate the length from pivot point to gravity in the pendulum.
 
Enter the frequency: 0.2
Enter the mass of the pendulum: 10
Enter the inertia: 60
 
The length is 0.9658 m
%}
%{
***************************************************************************
File name: savingsAccount-Plot.m
Programmmer name: Tanmay Gupta
Date created: 06/14/2020
Date of last revision: 06/14/2020
Details of the revision: None
Short description: Calculate amount in savings account and plot.
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate the balance in your savings account.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
old_balance= 1000;
% Initial money given to start
your_contribution= 100;
% personal monthly contribution

%Calculation:
new_balance(1)= old_balance+(0.005*old_balance)+your_contribution;
for t=2:(18*12)
    new_balance(t)= new_balance(t-1)+(0.005*new_balance(t-1))+your_contribution;
end

%Displaying the result:
plot(new_balance)
title('Monthly balance in savings account over time:')
xlabel('Time')
ylabel('Dollars')

%Sample run appended from Matlab's command window:
%{
This program will calculate the balance in your savings account.
%PLOT IS INCLUDED IN ZIP FILE
%}

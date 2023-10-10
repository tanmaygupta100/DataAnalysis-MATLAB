%{
***************************************************************************
File name: hw_week5_P1_10_3.m
Programmmer name: Tanmay Gupta
Date created: 06/21/2020
Date of last revision: 06/21/2020
Details of the revision: None
Short description: This program calculates the bill using dot product
***************************************************************************
%}

%Clear the workspace and command windows
clear,clc

%Program description:
disp('This program will calculate your shopping bill.')

%Variable initialization:
number_needed= [2,1,2,5,1];
% number of each product
cost_per_unit= [3.5,1.25,4.25,1.55,3.15];
% cost per one unit of each product

%Calculation:
cost_of_items= number_needed .* cost_per_unit;

%Displaying the result:
Bill=sum(cost_of_items)


%Sample run appended from Matlab's command window:
%{
This program will calculate your shopping bill.

Bill =

   27.6500
%}
%{
***************************************************************************
File name: hw_week5_P4_11_18.m
Programmmer name: Tanmay Gupta
Date created: 06/21/2020
Date of last revision: 06/21/2020
Details of the revision: None
Short description: Extract specific information from an array
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will extract information from the given array.')

%Variable initialization:
A= [1,3,5;3,9,2;11,8,2];
B1= ['fred','raph';'ken','susan'];
B1= char('fred','ken');
B2= char('raph','susan');
B= [B1,B2];
% this allows the names to properly be laid out in the array
C= [4;6;3;1];
C= int8(C);

%Displaying the result:
sample_cell= {A,B,C};
% this will create the cell array
array_A= sample_cell{1}
% this will extract array A
array_C_and_row_3= sample_cell{3}(3,1)
% this will extract information from array C, row 3
Name= sample_cell{2}(1,(1:4))
% this will extract "fred"


%Sample run appended from Matlab's command window:
%{
This program will extract information from the given array.

array_A =

     1     3     5
     3     9     2
    11     8     2


array_C_and_row_3 =

  int8

   3


Name =

    'fred'
%}
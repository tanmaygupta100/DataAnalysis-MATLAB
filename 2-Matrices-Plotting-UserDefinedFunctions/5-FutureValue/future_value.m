%{
***************************************************************************
File name: future_value.m
Programmmer name: Tanmay Gupta
Date created: 05/31/2020
Date of last revision: 05/31/2020
Details of the revision: None
Short description: Calculate the values for hw_week2_6_3.m
***************************************************************************
%}

%Calculation:
function FV=future_value(PV,I,N)
FV= PV*(1+I)^N
end
% This sets up a function that plugs in inputs from the hw_week2_6_3.m file

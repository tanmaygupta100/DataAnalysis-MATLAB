%{
***************************************************************************
File name: evaluateDerivative.m
Programmmer name: Tanmay Gupta
Date created: 06/24/2020
Date of last revision: 06/24/2020
Details of the revision: None
Short description: Function uses nth value from getDerivative.m to
calculate derivative answer for for hw_week6_P3.m
***************************************************************************
%}

function [result] = evaluateDerivative(f, x_val)
% function evaluates the derivative

result = subs(f, x_val);
end
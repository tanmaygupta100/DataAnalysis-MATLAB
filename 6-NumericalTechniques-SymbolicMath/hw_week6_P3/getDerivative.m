%{
***************************************************************************
File name: getDerivative.m
Programmmer name: Tanmay Gupta
Date created: 06/24/2020
Date of last revision: 06/24/2020
Details of the revision: None
Short description: Function takes nth value input for hw_week6_P3.m
***************************************************************************
%}

function [deriv] = getDerivative(f, type)
% Function to calculate and return the derivative


if type >= 1 && type <= 4
    deriv = diff(f, type);
end

end
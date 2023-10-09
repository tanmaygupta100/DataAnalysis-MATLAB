%{
***************************************************************************
File name: calcarea.m
Programmmer name: Tanmay Gupta
Date created: 06/16/2020
Date of last revision: 06/16/2020
Details of the revision: None
Short description: Calculate area for quiz_4.m
***************************************************************************
%}

function area = calcarea(length,shape);
%Calculations:
if(shape=='s' || shape=='S')
    area = length^2;
else
    area = pi*length^2;
end

%{
***************************************************************************
File name: calcperim.m
Programmmer name: Tanmay Gupta
Date created: 06/16/2020
Date of last revision: 06/16/2020
Details of the revision: None
Short description: Calculate perimeter for menu.m
***************************************************************************
%}

function perim = calcperim(length,);
%Calculations:
if(v2=='s' || v2=='S')
    perim = 4*length;
else
    perim = 2*pi*length;
end

%{
***************************************************************************
File name: plotTheFunctions.m
Programmmer name: Tanmay Gupta
Date created: 06/24/2020
Date of last revision: 06/24/2020
Details of the revision: None
Short description: Function plots the functions from evaluateDerivative.m,
evaluateIntegral.m, and hw_week6_P3.m
***************************************************************************
%}

function plotTheFunctions(f)
% Function to plot the function, derivative, and integral

deriv = getDerivative(f, 1);
intg = evaluateIntegral(f);

%Plot of function:
subplot(3, 1, 1)
fplot(f)
title(['f = ', char(f)])

%Plot of derivative:
subplot(3, 1, 2)
fplot(deriv)
title(['df = ', char(deriv)])

%Plot of integral:
subplot(3, 1, 3)
fplot(intg)
title(['integral(df) = ', char(intg)])

end
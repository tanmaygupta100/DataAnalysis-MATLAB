%{
***************************************************************************
File name: squareRootEdmondHalley.m
Programmmer name: Tanmay Gupta
Date created: 06/14/2020
Date of last revision: 06/14/2020
Details of the revision: None
Short description: Calculate square root using Edmond Halley algorithm
***************************************************************************
%}

function sqrt = hw_week4_9_13(A,Int,eps)
%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate a square root using the Edmond Hall algorithm.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
% A = number taken square root of
% eps = epsilon special function
% diff = absolute value of difference of x

%Calculation:
while diff >= eps
    %New approximation:
    y(n-1)= (1/A)*x(n-1)^2;
    x(n)= (x(n-1)/8)*(15-y(n-1)*(10-3*y(n-1)));
    %Convergence criterion:
    diff= abs(x(n)-x(n-1));p
end


%Displaying the result:
sqrt=x(n)
fprintf('The square root of %0.2f is %0.2f.',A,sqrt);

%Sample run appended from Matlab's command window:
%{

%}

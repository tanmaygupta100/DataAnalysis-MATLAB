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

function result= squareRootEdmondHalley(A,x,e)

%Clear the workspace and command windows
%clear, clc

%Program description:
disp('This program will calculate a square root using the Edmond Hall algorithm.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
% A is the number needed to find the square root of
% e is epsilon
result = x;
% this is the initial guess
prev_x = 0;
% this is the previous value

while abs(result - prev_x) > e
    % continue until convergence criterion is met
    prev_x = result;
    % save current x value as xprev for later until result is updated in current run
    
    %Calculation:
    y = result^2/A;
    result = (result/8)* (15 - y*(10 - 3*y));
end

%Displaying result:
fprintf('The square root of %0.2f is %0.4f.',A,result);
end


%Sample run and comparison run appended from Matlab's command window:
%{
>> my_sqrt(5,2,0.00001)
This program will calculate a square root using the Edmond Hall algorithm.

The square root of 5.00 is 2.2361.
ans =

    2.2361


>> sqrt(5)
ans =

    2.2361
%}

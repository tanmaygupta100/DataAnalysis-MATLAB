%{
***************************************************************************
File name: hw_week5_P3.m
Programmmer name: Tanmay Gupta
Date created: 06/21/2020
Date of last revision: 06/21/2020
Details of the revision: None
Short description: This program will use a user given polynomial and make
some calculations
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program take a given polynomial and make preferred calculations.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Displaying the results:
global p
flag=0;
while (1)
    
    %Menu:
    choice=menu('Menu','Enter the degree and coefficients of the polynomial', 'Evaluate the polynomial at a user defined point', 'Display the roots of the polynomial', 'Exit');
    
    %Calling the functions for different menu options:
    switch(choice)
    
        %1st menu option:
        case 1
            equation= polynomial();
            flag=1;

        %2nd menu option:
        case 2
            if (flag==0)
                disp('You need to enter the degree and coefficients of the polynomial first.');
            else
                point=input('Enter the point to calculate value of the polynomial at: ');
                result = polyEval(point);
            end
            
        %3rd menu option:    
        case 3
            if (flag==0)
                disp('You need to enter the degree and coefficients of the polynomial first.')
            else
                root = polyRoots(p);
            end
            
        %4th menu option:    
        case 4
            break
            
            
    end
    
end


%Sample run appended from Matlab's command window:
%{
This program take a given polynomial and make preferred calculations.
 
You need to enter the degree and coefficients of the polynomial first.
Please enter the degree of the polynomial: 3
Please enter the coefficient of power 3:  2
Please enter the coefficient of power 2:  2
Please enter the coefficient of power 1:  2
Please enter the coefficient of power 0:  2
 
Equation =
 
2*x^3 + 2*x^2 + 2*x + 2
 
Enter the point to calculate value of the polynomial at: 4
The function value at the entered point is: 

result =

    32

The roots of given polynomial are: 

r =

  -1.0000 + 0.0000i
  -0.0000 + 1.0000i
  -0.0000 - 1.0000i
%}
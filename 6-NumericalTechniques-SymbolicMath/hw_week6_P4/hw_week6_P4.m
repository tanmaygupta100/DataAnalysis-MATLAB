%{
***************************************************************************
File name: hw_week6_P4.m
Programmmer name: Tanmay Gupta
Date created: 06/24/2020
Date of last revision: 06/24/2020
Details of the revision: None
Short description: This program will open a menu that will allow
differentiating functions and polynomials
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This menu will allow you to differentiate entered functions and polynomials.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
flag = 0;
flag2 = 0;
syms x


%Displaying the results:
while (1)
    
    %Menu:
    choice=menu('Menu', 'Enter two functions in string format/symbolic', 'Enter two polynomials', 'Differentiate each function (symbolic format)', 'Differentiate each polynomial','Exit');
    
    %Calling the functions for different menu options:
    switch(choice)
        
        %Enter two functions in string format/symbolic:
        case 1
            if flag==0
                func1= input('Enter the first function: ');
                func2= input('Enter the second function: ');
            end
            flag=1;

        %Enter two polynomials:
        case 2
            if flag2==0
                poly1= input('Enter the first polynomial: ');
                poly2= input('Enter the second polynomial: ');
            end
            flag2=1;
            
        %Differentiate each function (symbolic format):
        case 3
            if flag==0
                disp('Please enter the functions first')
            else
                fprintf('The differentiation of function 1 is: ');
                diffFunc1= diff(func1)
                fprintf('The differentiation of function 2 is: ');
                diffFunc2= diff(func2)
            end
            
        %Differentiate each polynomial:
        case 4
            if flag2==0
                disp('Please enter the polynomials first')
            else
                fprintf('The differentiation of polynomial 1 is: ');
                diffPoly1= diff(poly1)
                fprintf('The differentiation of polynomial 2 is: ');
                diffPoly2= diff(poly2)
            end
            
        %Exit:    
        case 5
                break
            
    end
    % end for the switch

end
% end for the while


%Sample run appended from Matlab's command window:
%{
This menu will allow you to differentiate entered functions and polynomials.
 
Please enter the functions first
Please enter the polynomials first
Enter the first function: 2^x
Enter the second function: x^3
The differentiation of function 1 is:  
diffFunc1 =
 
2^x*log(2)
 
The differentiation of function 2 is:  
diffFunc2 =
 
3*x^2
 
Enter the first polynomial: 2*x^3+3*x+2
Enter the second polynomial: 3*x^2+2*x+3
The differentiation of polynomial 1 is:  
diffPoly1 =
 
6*x^2 + 3
 
The differentiation of polynomial 2 is:  
diffPoly2 =
 
6*x + 2
%}
%{
***************************************************************************
File name: week6_quiz5.m
Programmmer name: Tanmay Gupta
Date created: 06/24/2020
Date of last revision: 06/24/2020
Details of the revision: None
Short description: Program displays a menu allowing user to evaluate a
derivative and intergral of a function, and plot them.
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This menu will allow you to plot and calculate the integral and derivative of a symbolic function.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Variable initialization:
flag = 0;
flag2 = 0;

%Displaying the results:
while (1)
    
    %Menu:
    choice=menu('Menu', 'Enter a function in symbolic format', 'Choose 1st to 3rd derivative to calculate at', 'Calculate and display the derivative of the function at 0', 'Calculate and display the indefinite integral', 'Plot the function, first derivative, and integral','Exit');
    
    %Calling the functions for different menu options:
    switch(choice)
        
        %Enter a function in symbolic format:
        case 1
            syms x
            f(x)= input('Type your symbolic function below in terms of x only: ','s');
            %disp('Type your symbolic function below in terms of x only')
            %f= input(' ','s');
            
            %f= solve(f);
            flag=1;

        %Choose 1st to 4th derivative to calculate at:
        case 2
            if flag==0
                disp('Please enter the function first')
            else
                type= input(['Enter 1 for 1st derivative, and so on, up to the 3rd: ','s']);
                if type==1
                    nthValue= diff(f(x));
                elseif type==2
                    nthValue= diff(diff(f(x)));
                elseif type==3
                    nthValue= diff(diff(diff(f(x))));
                else
                    disp('Error. Invalid number, please try again.')
                end
                %nthValue = getDerivative(f,type)
                flag2 = 1;
            end
            
        %Display the nth derivative of the function:    
        case 3
            if flag==0
                disp('Please enter the function first')
            else
                if flag2==0
                    disp('Please select the option 2 first')
                else
                    derivative= nthValue
                    %result = evaluateDerivative(nthValue, 0);
                    %('The derivative at x = 0 is: ')
                    %disp(result)
                end
            end
            
        %Calculate and display the indefinite integral:    
        case 4
            if flag==0
                disp('Please enter the function first')
            else
                indefinite_integral= int(f(x))
                %indefinite_integral = evaluateIntegral(f)
            end
            
        %Plot the function with its derivative and integral:    
        case 5
            if flag==0
                disp('Please enter the function first')
            else
                %plotTheFunctions(f)
                subplot(f)
                subplot(nthValue)
                subplot(indefinite_integral)
                
            end
            
        %Exit:    
        case 6
                break
            
    end
    % end for the switch

end
% end for the while


%Sample run appended from Matlab's command window:
%{
This menu will allow you to plot and calculate the integral and derivative of a symbolic function.
 
Please enter the function first
Type your symbolic function below in terms of x only
 3*x*exp(4*x^2)
Please select the option 2 first
Enter 1 for 1st derivative, and so on, up to the 4th: 2
 
nthValue =
 
72*x*exp(4*x^2) + 192*x^3*exp(4*x^2)
 
 
indefinite_integral =
 
(3*exp(4*x^2))/8
%}
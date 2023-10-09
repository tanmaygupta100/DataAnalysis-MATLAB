% This allows the user to skip a step without entering a function using flags

clc, clear;
flag=0;

while (1)
    choice=menu('Numerical Integration', 'Enter Function', 'Integrate-Simson', 'Integrate-Lobatto', 'Exit');
    switch (choice)
        case 1 %this is for the 'enter function' options/rules
            fun1=input('please enter a function in symbolic format in terms of x>> ','s');
            flag=1; % when a flag changes to 1, it means that it becomes true
        case 2
            if (flag==0) %this means that the first choice has not been executed
                disp('You need to enter the function first');
            else
                a=input('please enter the lower limit of integration>>  ');
                b=input('please enter the upper limit of integration>>  ');
                result=quad(fun,a,b, 0.001);
                fprintf('The numerical value of integration is: %0.3f \n',result);
            end
        case 3
            if (flag==0)
                disp('You need to enter the functio first');
            else
                a=input('please enter the lower limit of integration>>  ');
                b=input('please enter the upper limit of integration>>  ');
                result=quad(funl,a,b);
                fprintf('The numerical value of integration is: %0.3f \n',result);
            end
        case 4
            break; %this ends the cylce, since it is the exit option
    end
end

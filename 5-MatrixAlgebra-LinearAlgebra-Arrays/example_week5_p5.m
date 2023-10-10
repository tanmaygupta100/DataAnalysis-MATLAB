%{
******************************************************
file name: example_week5_p5
programmer name: J. Matlab
date created: xx/xx/xxxx
date of last revision: N/A
details of the revision: 
short description: this program will find the average and the maximum
grade that the user choose to enter, sort the grades, and show the grades
*******************************************************
%}

% program description: this program will find the average and the maximum
% grade that the user choose to enter, sort the grades, and show the grades


% list of variables used with a short description
% flag will be used to check if the number of grades are entered and if
    % they are valid or not 
% grades will be used to store the menu of options 
% number will be used to store the number of grades will be entered by the
    % user 
% grade will be an array used to store the graded entered by the used 
% sortedGrades will be and array used to store the grades in an ascending
    % order
% max will be used to store the maximum grade 
% ave will be used to store the average grade 

clear,clc

format bank
flag=0;
while (1)
     grades=menu('grades program', 'Enter how many grades you would like to enter', 'Enter and display all entered grades', 'Sort grades in an ascending order', 'Find the average and the maximum grade', 'Exit');
     
     switch(grades)
         
         case 1
             number =input('please enter how many grades you want to enter >> ');
             if number <=0 || mod(number,1)~=0 
                 disp('please enter a valid number, positive and integer numbers only are acceptable');
                 flag=1;
             else
                 k=1;
                 flag=2;
             end
             
         case 2
             if flag ==2
                 while k<=number
                      fprintf('please enter grade number %d >> ', k);
                      grade(k)=input('');
                      if grade(k)<0 || grade(k)>100
                            disp('please enter a valid number, only positive numbers or zero are acceptable');
                            continue
                      else
                          k=k+1;
                      end
                      
                 end
                 disp('your grades entered are');
                 disp('');
                 disp(grade);
                 flag=3;
             elseif flag==1
                 disp('you have entered an invalid number for the number of grades to be entered, please enter that again');
             else
                 disp('first, you need to enter a value for the number of grades to be entered');
             end
             
         case 3
             if flag==3
                 disp('your grades in a ascending order are');
                 disp(sort(grade));
                 
             elseif flag==2
                 disp('you need to enter the grades first');
             elseif flag==1
                 disp('you have entered an invalid number for the number of grades to be entered, please enter that again');
             else
                  disp('first, you need to enter a value for the number of grades to be entered');
                  
             end
         case 4
             if flag==3
                 fprintf('your maximum grade is %0.2f \n',max(grade));
                 fprintf('your average grade is %0.2f \n', mean(grade));
                 
             elseif flag==2
                 disp('you need to enter the grades first');
             elseif flag==1
                 disp('you have entered an invalid number for the number of grades to be entered, please enter that again');
             else
                 disp('first, you need to enter a value for the number of grades to be entered');
             end
         case 5
             break
     end
end
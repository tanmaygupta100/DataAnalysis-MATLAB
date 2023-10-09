%{
***************************************************************************
File name: calcBillDates.m
Programmmer name: Tanmay Gupta
Date created: 06/07/2020
Date of last revision: 06/07/2020
Details of the revision: None
Short description: This program calculates a parking bill based on
user-inputs
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program questions for user:
disp('Which parking lot are you using?');
choice=input("Type '1' for the Short-Term or '2' for Long-Term parking lot:");
disp(' ')
disp('How long did you park at the lot for?');

%Variable initialization:
Weeks= input('Weeks: ');
Days= input('Days: ');
Hours= input('Hours: ');
Minutes= input('Minutes: ');

%Decides bill/code to use based on user-input:
if(choice==1)
    bill=LongTermBill(Weeks, Days, Hours, Minutes);
        % This calls the LongTermBill.m file
elseif(choice==2)
    bill=ShortTermBill(Weeks, Days, Hours, Minutes);
        % This calls the ShortTermBill.m file
else
    disp('Not available, try again.')
end

%Displaying the results:
disp('Bill: ')
disp(' ')
disp('> Time Stayed: ')
fprintf('%0.2f weeks %0.2f days %0.2f hours %0.2f minutes',Weeks,Days,Hours,Minutes);
disp(' ')
fprintf('> Fee: %0.2f dollars',bill);
disp(' ')



%Sample run appended from Matlab's command window:
%{
Which parking lot are you using?
Type '1' for the Short-Term or '2' for Long-Term parking lot:1
 
How long did you park at the lot for?
Weeks: 1
Days: 2
Hours: 3
Minutes: 4

result =

    58

Bill: 
 
> Time Stayed: 
1.00 weeks 2.00 days 3.00 hours 4.00 minutes 
> Fee: 58.00 dollars 
%}

%{
***************************************************************************
File name: changingBillWithInputs.m
Programmmer name: Tanmay Gupta
Date created: 06/14/2020
Date of last revision: 06/14/2020
Details of the revision: None
Short description: Calculate total shopping bill changing with each input
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This program will calculate your bill. Type 0 when finished.')
disp(' ') % I included a space to make the program appear cleaner at the end


%Variable initialization / setting up the counting loop:
k=1;
x(1)= input('Enter the cost of the first item: $');
% only asking for first item for x(1)
while x(k)~=0
    k=k+1;
    x(k)=input('Enter the cost of the next item price: $');
    % this keeps asking for values until the user types 0
end

%Calculation:
total=sum(x);
% adds up all the items' costs

%Displaying the result:
while (x(k)==0)
    % while loop required for break
    disp(' ')
    fprintf('Total bill: $%0.2f \n',total);
    payment= input('Enter amount to pay: $');
    if (payment<total)
        disp('Error, value too low. Please try again.')
        % this avoids any errors that could come during payment
        break
    end
    changeDue= payment-total;
    % this calculates the change due for the customer after payment
    fprintf('Change due: $%0.2f \n',changeDue);
    disp(' ')
    break
end

%Sample run appended from Matlab's command window:
%{
NORMAL RUN:
This program will calculate your bill. Type 0 when finished.
 
Enter the cost of the first item: $15
Enter the cost of the next item price: $14
Enter the cost of the next item price: $13
Enter the cost of the next item price: $0
 
Total bill: $42.00 
Enter amount to pay: $45
Change due: $3.00 



RUN SHOWING ERRORS AVOIDED:
This program will calculate your bill. Type 0 when finished.
 
Enter the cost of the first item: $4
Enter the cost of the next item price: $0
 
Total bill: $4.00 
Enter amount to pay: $3
Error, value too low. Please try again.
%}

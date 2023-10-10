%{
***************************************************************************
File name: hw_week5_P2.m
Programmmer name: Tanmay Gupta
Date created: 06/21/2020
Date of last revision: 06/21/2020
Details of the revision: None
Short description: Program runs a menu using components of circleInfo.m,
circleArea.m, and circleCircum.m
***************************************************************************
%}

%Clear the workspace and command windows
clear, clc

%Program description:
disp('This menu will allow you to calculate the area or circumference of a circle using its radius.')
disp(' ') % I included a space to make the program appear cleaner at the end


flag=0;

%Calculation:
while (1)
    
    %Menu:
    choice=menu('Circle and Cylinder', 'Enter the radius', 'Display the area', 'Display the circumference','Exit');
    
    %Calling the functions for different menu options:
    switch(choice)
        
        
        %1st menu option:
        case 1
            r=circleInfo();
            %calling out the radius
            flag=1;
            
        %2nd menu option:
        case 2
            if (flag==0)
                disp('you need to enter the radius first');
            else
                % calculating the area and printing the answer
                Area=circleArea(r)
            end
            
        %3rd menu option:    
        case 3
            if (flag==0)
                disp('you need to enter the radius first');
            else
                %calculating the circumference and printing answer
                Circumference=circleCircum(r)
            end
            
        %4th menu option:    
        case 4
            break
            
            
    end
    % this ends the switch
    
end
% this ends the while loop


%Sample run appended from Matlab's command window:
%{
FIRST SAMPLE RUN:
This menu will allow you to calculate the area or circumference of a circle using its radius.
 
Enter the radius: 15

Area =

  706.8583


Circumference =

   94.2478


SECOND SAMPLE RUN:
This menu will allow you to calculate the area or circumference of a circle using its radius.
 
you need to enter the radius first
Enter the radius: 5

Area =

   78.5398
%}
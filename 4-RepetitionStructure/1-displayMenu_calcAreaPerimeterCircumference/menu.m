%{
***************************************************************************
File name: menu.m
Programmmer name: Tanmay Gupta
Date created: 06/16/2020
Date of last revision: 06/16/2020
Details of the revision: None
Short description: Display menu until exit choice is selected. Program will
calculate areas and perimeter or circumference by calling only 2 functions.
***************************************************************************
%}

%Clear the workspace and command windows
clear,clc

%Program description:
disp('Geometric Calculator');
disp('Choose one of the following options: ');
disp(' ');

%Variable initialization:
selection=0;

%Menu and displaying results:
while(selection~=4)
    disp('Press 1 to enter the side or radius and shape code.');
    disp('Press 2 to display the area.');
    disp('Press 3 to display the perimeter or circumference.');
    disp('Press 4 to exit.');
    selection=input('Enter selection: ');
    
    if (selection==1)
        length=input('Please enter a value for radius or side: ');
        shape=input('Please enter the shape code (c/C for circle, s/S for square): ','s');
    end
    
    if(selection==2)
            fprintf('The area of is: %0.2f \n',(calcarea(length,shape)));
    end
    
    if(selection==3)
        fprintf('The perimeter of is: %0.2f \n',(calcperim(length,shape)));
    end
    
    if(selection==4)
        disp('Thank you for using the geometric calculator. Bye!');
    end
end

%Sample run appended from Matlab's command window:
%{
SAMPLE RUN 1:
Geometric Calculator
Choose one of the following options: 

Press 1 to enter the side or radius and shape code.
Press 2 to display the area.
Press 3 to display the perimeter or circumference.
Press 4 to exit.
Enter selection: 1
Please enter a value for radius or side: 10
Please enter the shape code (c/C for circle, s/S for square): s
Press 1 to enter the side or radius and shape code.
Press 2 to display the area.
Press 3 to display the perimeter or circumference.
Press 4 to exit.
Enter selection: 2
The area of is: 100.00 
Press 1 to enter the side or radius and shape code.
Press 2 to display the area.
Press 3 to display the perimeter or circumference.
Press 4 to exit.
Enter selection: 4
Thank you for using the geometric calculator. Bye!

SAMPLE RUN 2:
Geometric Calculator
Choose one of the following options: 
 
Press 1 to enter the side or radius and shape code.
Press 2 to display the area.
Press 3 to display the perimeter or circumference.
Press 4 to exit.
Enter selection: 1
Please enter a value for radius or side: 15
Please enter the shape code (c/C for circle, s/S for square): c
Press 1 to enter the side or radius and shape code.
Press 2 to display the area.
Press 3 to display the perimeter or circumference.
Press 4 to exit.
Enter selection: 3
The perimeter of is: 94.25 
Press 1 to enter the side or radius and shape code.
Press 2 to display the area.
Press 3 to display the perimeter or circumference.
Press 4 to exit.
Enter selection: 4
Thank you for using the geometric calculator. Bye!

%}

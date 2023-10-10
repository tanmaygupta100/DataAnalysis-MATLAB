function [choice]= printMenuAndGetChoice()
% This function will display the menu and return the choices

choice=0;
while (choice<1 || choice>6)
    disp('1) Enter a function')
    disp('2) Calculate 1st, 2nd, or 3rd derivative.')
    disp('3) Evaluate the derivative chosen from option 2 at x = 0')
    disp('4) Calculate the indefinite integral.')
    disp('5) Plot the function, 1st Derivative and its integral')
    disp('6) Exit')
    choice = input('Enter your choice: ');
    if choice < 1 || choice > 6
        disp('Invalid choice. Choice must be in range 1 to 6')
        disp(' ')
    end
end

end
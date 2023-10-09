%Calculation and Displaying the Results
global p;
k=1;
polyDefined=0; %this means that it is not defined, or that it's false, since it is zero
while k>=1
    poly=menu('Choose from the following options:', 'Enter the degree and coefficients of the polynomial', 'Evaluate the polynomial at a user defined point', 'Display the roots of the polynomial', 'Exit');
    switch poly
        case 1
            %Call function polynomial
            polynomial()
            polyDefined=1; %this being 1 means that it is now true, it is defined
        case 2
            if (polyDefined==1)
                polyEval(p);
            else %this is what comes up when the user doesn't define the polynomial
                disp('You ifrst need to define the polynomial.');
            end
        case 3
            if (polyDefined==1)
                polyRoots(p)
            else
                disp('You first need to define the polynomial.');
            end
        case 4
            disp('Matlab will now exit this program.')
            k=-1;
    end
    k=k+1;
end

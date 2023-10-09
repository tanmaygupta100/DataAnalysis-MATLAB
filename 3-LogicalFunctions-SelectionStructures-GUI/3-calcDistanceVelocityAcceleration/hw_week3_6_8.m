%{
***************************************************************************
File name: hw_week3_6_8.m
Programmmer name: Tanmay Gupta
Date created: 06/07/2020
Date of last revision: 06/07/2020
Details of the revision: None
Short description: Function will calculate distance, velocity, and
acceleration of a free falling object. To be used with free_fall.m
***************************************************************************
%}

%Clear the workspace and command windows
%clear, clc

%Program description:
disp('This program will calculate the distance, velocity, and acceleration of a free falling object.')
disp(' ') % I included a space to make the program appear cleaner at the end

%Range/Variable initialization:
t=0:5:20;
% 0 to 20 seconds in 5 second increments

%Calling over data from free_fall.m:
[x,v,a]=free_fall(t)


%Sample run appended from Matlab's command window:
%{
This program will calculate the distance, velocity, and acceleration of a free falling object.
 

x =

   1.0e+03 *

         0    0.1225    0.4900    1.1025    1.9600


v =

     0    49    98   147   196


a =

    9.8000


x =

   1.0e+03 *

         0    0.1225    0.4900    1.1025    1.9600


v =

     0    49    98   147   196


a =

    9.8000
%}

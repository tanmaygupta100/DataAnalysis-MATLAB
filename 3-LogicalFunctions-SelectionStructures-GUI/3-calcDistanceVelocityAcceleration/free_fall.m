function [x,v,g]=free_fall(t)
g=9.8;
% g= gravity constant
x=(1/2)*g*(t.^2)
% x= distance
v=g*t
% v= velocity equation in meters/seconds
a=g
%a= acceleration in meters/seconds^2
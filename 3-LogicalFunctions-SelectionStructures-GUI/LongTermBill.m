function result=LongTermBill(w,d,h,m)
% This will calculate the calculation the Long-Term Bill
hours=h+(m/60);
% This will add the hours and minutes
hours=ceil(hours);
    % This will round to the nearest hour
if(hours>=6)
    LTB=(42*w)+(6*d)+6;
    % This will add the total bill
else
    LTB=(42*w)+(6*d)+hours;
    % Other option for different time
    result=LTB
end

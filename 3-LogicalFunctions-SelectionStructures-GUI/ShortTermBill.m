function result=ShortTermBill(w,d,h,m)
% This will calculate the calculation the Short-Term Bill
minutes=((h*60)+m)-30);
% This will add the hours and minutes
MinutesPrice=minutes/20;
MinutesPrice=ceil(MinutesPrice);
    % This will round to the nearest hour
WeekPrice=7*25;
% This is the price to stay in the Short-Term Parking Lot for one week
if(MinutesPrice>=25)
    STB=(WeekPrice*w)+(25*d)+25;
    % This will add the total bill
else
    STB=(WeekPrice*w)+(25*d)+MinutesPrice;
    % Other option for different time
    result=STB;
end

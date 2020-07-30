function [profit,unsold] = simulation(days, bought, purchasing_price, retail_price, unsold, reduced_price)
P_x = soldflowers(days);
expenditure = purchasing_price * bought;    
profit = zeros(1,days);

for i = 1:days
    if P_x(i) >= bought    %you could not sell more than bought
        profit(i) = expenditure + bought * retail_price + max(min(unsold, P_x(i) - bought),0)*reduced_price;
        unsold = 0;
    else
        profit(i) = expenditure + P_x(i) * retail_price;
        unsold = bought - P_x(i);
    end
end
end
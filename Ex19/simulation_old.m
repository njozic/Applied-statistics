function [profit] = simulation(n, bought,purchasing_price,retail_price)
P_x = soldflowers(n);
expenditure = purchasing_price * bought;    
profit = zeros(1,n);

for i = 1:n
    if P_x(i) >= bought    %you could not sell more than bought
        profit(i) = expenditure + bought * retail_price;
    else
        profit(i) = expenditure + P_x(i) * retail_price; 
    end
end

end
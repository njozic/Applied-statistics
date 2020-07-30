%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Authors:      Niko Jozic & Boris Brankovic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------
function control(probabilities)

buy = 3;
sell = 7;
maxbought = 20;

year = 365;
years = 6;
profit = zeros(1,maxbought);

figure();
for y = 1:years
    for day = 1:(year*y)
        [soldflowers, boughtflowers] = mysimulate(probabilities, maxbought);
        actualsoldones = soldflowers;
    if boughtflowers < actualsoldones
        actualsoldones = boughtflowers; 
    end
        p = (actualsoldones * sell) - (boughtflowers * buy);
        profit(boughtflowers) =  profit(boughtflowers) + p;
    end
    [M,I] = max(profit);
    
    Inegative = 0;
    true = 1;
    for j = 1:maxbought
        if profit(j) < 0 && true == 1
            Inegative = j;
            true = 0;
        end
    end
    
    subplot(2,3,y);
    plot(profit);
    title(['Most $ at: ', num2str(I), ' Loss at: ', num2str(Inegative), ' flowers']);
    xlabel('Flowers bought');
    ylabel(['Profit sum for ',num2str(y),' years']);
end

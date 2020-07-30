function control(simulation_times)
my_alpha      =  0.01;  % acurracy of 1%

purchasing_price    = -3; 
retail_price        =  7; 
reduced_price       =  5; 

flower_bought =    [5, 10]; 

unsold = 0;
for j = flower_bought
    k=1;
    for days = 100:100:10000
        for simu=1:simulation_times
            [profits_cool, unsold] = simulation(days, j,purchasing_price,retail_price,unsold,reduced_price);
            profits = simulation_old(days, j,purchasing_price,retail_price);
            [p(simu),h(simu)] = signrank(profits_cool,profits,'alpha',my_alpha);
        end
        h0_rejected(k)=sum(h);
        p_Value(k) = mean(p);
        k=k+1;
       
    end
    Day = [100:100:10000]';
    H0_Rejected = h0_rejected(:);
    H0_Accepted = 100 - h0_rejected(:);
    p_Value = p_Value(:);
    fprintf('Blumen gekauft: %d',j);
    T = table(Day, H0_Accepted, H0_Rejected, p_Value)
end
fprintf('\nH0: Das Kuehlhaus zahlt sich nicht aus = Profit bleibt gleich oder schlechter\n');
fprintf('H1: Das Kuehlhaus zahlt sich aus = mehr Profit\n');
fprintf('5  Blumen: H0 rejected: Bei 5 verkaufenten Blumen zahlt sich das Kuehlhaus nach etwa ab ~3000 Tagen aus\n');
fprintf('10 Blumen: H0 akzeptiert: Der Test findet keinen zusätzlichen Profit.\nBei 10 verkaufenten Blumen zahlt sich das Kuehlhaus somit nicht aus\n');


fprintf('Als Test wurde signrank() verwendet da es sich um eine verbundene Stichprobe handelt. \nDie Berechnungen des Gewinns basieren auf der selben Stichprobe\n');

%%%%%%%%%%%%%%%%%%%%%Extra work:%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
flowers = 1:18;
total_profit = zeros(length(flowers),1);

unsold = 0;
for days = 1:length(flowers)
    [profit,unsold] = simulation(simulation_times, flowers(days),purchasing_price,retail_price,unsold,reduced_price);
    total_profit_cool(days) = mean(profit);
    profit = simulation_old(simulation_times, flowers(days),purchasing_price,retail_price);
    total_profit(days) = mean(profit);
end

figure;
bar(total_profit_cool); hold on; 
bar(total_profit,'r');
legend('with storage','without storage'); 
alpha(.5)
set(gca, 'xtick', flowers)
xlabel('bought flowers'); ylabel('profit in EURO'); grid on;


function control()
clc; 
myalpha = 0.01;
load('Ex21_NeuroEnhancer.mat');
[h(1),p(1)]=lillietest(data(:,2),'alpha',myalpha);    
[h(2),p(2)]=lillietest(data(:,3),'alpha',myalpha);
fprintf('H0 die Daten sind normalverteilt, H1 die Daten sind nicht normalverteilt\n');
if sum(h)==0
    fprintf('Ex21) H0 akzeptiert mit p=%.4f/p=%.4f\n',p);
else
    fprintf('Ex21) Wir verwerfen die H0 Hypothese zu gunsten von H1 p=%.4f/p=%.4f\n',p);
end

fprintf('Verwendeter Test: ttest da normalverteilt und verbundene Stichprobe(selbe Probeanden noch einmal)\n');

fprintf('\nH0 das Medikament hat keine Auswirkung, H1 das Medikament hat eine Auswirkung\n');
[h,p] = ttest(data(:,2),data(:,3),'alpha',0.01);
if h == 0
    fprintf('Ex21) H0 akzeptiert p=%.4f\n',p);
else
    fprintf('Ex21) Wir verwerfen die H0 Hypothese zu gunsten von H1  p=%.4f\n',p);
end

n = length(data);

mean_vorher = mean(data(:,2));
std_vorher = std(data(:,2));

l = (tinv((1-(myalpha/2)),(n-1))* std_vorher)/sqrt(n);
ci_bot_vorher = mean_vorher-l;
ci_top_vorher = mean_vorher+l;

mean_nachher = mean(data(:,3));
std_nachher = std(data(:,3));

l = (tinv((1-(myalpha/2)),(n-1))* std_nachher)/sqrt(n);
ci_bot_nachher = mean_nachher-l;
ci_top_nachher = mean_nachher+l;

fprintf('\nMittelwert: %g; CI vorher [%g , %g]\n',mean_vorher,ci_bot_vorher,ci_top_vorher);
fprintf('Mittelwert: %g; CI nachher [%g , %g]\n',mean_nachher,ci_bot_nachher,ci_top_nachher);

fprintf('\nDas Medikament hat eher negative Auswirkung auf die kognitiven Faehigkeiten.\nMit einem Signifikanzniveau von 99%% liegt der Mittelwert nach dem Medikament\nunterhalb dem vorherigen Mittelwert.\n');
end
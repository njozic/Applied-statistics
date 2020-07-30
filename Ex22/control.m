function control()
clc; 
load('Ex22_FineParticles.mat')
myalpha = [0.01, 0.05];

[h(1),p(1)]=lillietest(data(:,1),'alpha',myalpha(1));    
[h(2),p(2)]=lillietest(data(:,2),'alpha',myalpha(1));
fprintf('H0 die Daten sind normalverteilt, H1 die Daten sind nicht normalverteilt\n');
if sum(h)==0
    fprintf('Ex21) H0 akzeptiert mit p=%.4f/p=%.4f\n',p);
else
    fprintf('Ex21) Wir verwerfen die H0 Hypothese zu gunsten von H1 p=%.4f/p=%.4f\n',p);
end

fprintf('\nAls statistischen Test wird ranksum() verwendet, da davon ausgegangen \nwird, dass nicht die selben Fahrzeuge an beiden Orten vorbei fahren. \nSomit liegt keine verbundene Stichprobe vor,\nauﬂerdem sind die Daten nicht normalverteilt\n\n');
fprintf('H0 die Feinstaubbelastung verlaeuft an beiden Orten gleich, \nH1 die Feinstaubbelastung verlaeuft nicht gleich\n\n');

for i = myalpha
    fprintf('Ex22) alpha:%g\n',i);
    [p,h]=ranksum(data(:,1),data(:,2),'alpha',i);
    if h == 0
        fprintf('Ex22) H0 akzeptiert p=%g\n\n',p);
    else
        fprintf('Ex22) Wir verwerfen die H0 Hypothese zu gunsten von H1  p=%.4f\n\n',p);
    end
end

end
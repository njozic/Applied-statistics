function control()

    w = warning ('off','all');
    load('Ex18_AnnualDemand.mat');
    
    % Aufgabe 18.a
    fprintf('\nAufgabe 18.a)\n-------------\n\n');
    
    fprintf('WIKI: Der Lilliefors-Test prüft ob eine Stichprobe auf Abweichungen von der Normalverteilung untersucht werden kann.\n');
    [h p] = lillietest(x2);
    
    fprintf('H0 entspricht keinem sporadischem Bedarf, H1 entspricht einem sporadischem Bedarf.\n\n');
    
    if h == 1
        fprintf('Ablehnung von H0 bei einem Signifikanzniveau von 5%%.\nAufgrund des p-Wertes von %0.3f ist eine sichere Zurückweisung von H0 möglich.\n',p);
    else
        fprintf('Akzeptanz von H0 bei einem Signifikanzniveau von 5%%.\nAufgrund des p-Wertes von %0.3f ist eine sichere Zurückweisung von H0 nicht möglich.\n',p);
    end
    
    % Aufgabe 18.a
    fprintf('\nAufgabe 18.b)\n-------------\n\n');
    fprintf('H0 entspricht keiner signifikanten Änderung des Mittelwertes, H1 entspricht einer signifikanten Änderung des Mittelwertes.\n\n');

    % gibt das Ergebnis des auf dem Signifikanzniveau ALPHA durchgeführten Hypothesentests zurück
    [p h] = signrank(x2,1140,'ALPHA',0.01);
    
    fprintf('(www.statistik-nachhilfe.de)Der Wilcoxon-Vorzeichen-Rang-Test ermöglicht zwei abhängige Stichproben von mindestens ordinalskalierten Zufallsvariablen X und Y auf Gleichheit der zentralen Tendenz zu untersuchen.\n\n');
    
    if h == 1
        fprintf('Ablehnung von H0. Aufgrund des p-Wertes von %0.3f ist eine sichere Zurückweisung von H0 möglich.\n',p);
    else
        fprintf('Akzeptanz von H0. Aufgrund des p-Wertes von %0.3f ist eine sichere Zurückweisung von H0 nicht möglich.\n',p);
    end
    
end
%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function control()

    % Aufgabe 17.a --> Lilietest
    load('Ex17_MolecularMeas.mat','x');
   
    fprintf('\nAufgabe 17.a)\n-------------\n\n')
    fprintf('WIKI: Der Lilliefors-Test prüft ob eine Stichprobe auf Abweichungen von der Normalverteilung untersucht werden kann.\n');
    [h p] = lillietest(x);
    
    fprintf('H0 ist eine Normalverteilung, H1 ist keine Normalverteilung.\n\n');
    
    if p > 0.05
        % Es liegt eine Normalverteilung vor.
        fprintf('Akzeptanz von H0 bei einem Signifikanzniveau von 5%%. Die Stichprobe ist normalveilt.\nAufgrund des p-Wertes von %0.3f ist eine sichere Zurückweisung von H0 nicht möglich.\n',p);         
    else
        % Es liegt keine Normalverteilung vor.
        fprintf('Ablehnung von H0 bei einem Signifikanzniveau von 5%%. Die Stichprobe ist nicht normalveilt.\nAufgrund des p-Wertes von %0.3f ist eine sichere Zurückweisung von H0 möglich.\n',p);
    end
    fprintf('\n\n');

    % Aufgabe 17.b --> T-Test (Verifizierung)
    fprintf('Aufgabe 17.b)\n-------------\n')
    
    fprintf('\nH0 unterscheidet sich nicht signifikant mu = 300, H1 unterscheidet sich signifikant von mu = 300.\n\n');
    
    % Paramter
    n = numel(x);
    mu = 300;
    
    % Berechnung des Mittelwertes
    mn = mean(x);
    % Berechnung der Standardverteilung
    stdv = std(x);
    % Berechnung d
    t = sqrt(n)*(mn-mu)/stdv;
    % Berechnung des p-Wertes
    p = 2*tcdf(t,n-1);
    
    fprintf('Eigen-Implementierung:\n----------------------\n');
    if p > 0.05
        % Es liegt eine Normalverteilung vor.
        fprintf('Akzeptanz von H0. Aufgrund des p-Wertes von %0.9f ist eine sichere Zurückweisung von H0 nicht möglich.\n',p);         
    else
        % Es liegt keine Normalverteilung vor.
        fprintf('Ablehnung von H0. Aufgrund des p-Wertes von %0.9f ist eine sichere Zurückweisung von H0 möglich.\n',p);
    end
    
    fprintf('\n');
    
    fprintf('Matlab-Implementierung:\n----------------------\n');
    
    [h p] = ttest(x,mu);
    
    fprintf('\nT-Test zur Ermittlung der Mittelwertunterscheidung\n\n');
    
    if h == 0
        % Es liegt eine Normalverteilung vor.
        fprintf('Akzeptanz von H0. Aufgrund des p-Wertes von %0.9f ist eine sichere Zurückweisung von H0 nicht möglich.\n',p);         
    else
        % Es liegt keine Normalverteilung vor.
        fprintf('Ablehnung von H0. Aufgrund des p-Wertes von %0.9f ist eine sichere Zurückweisung von H0 möglich.\n',p);
    end
        
end
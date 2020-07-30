%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function ci =  ci_calc(p,samples)
   
    % Ergebnisvektor
    ci = zeros(1,3);

    % Berechnung der Paramter
    a = 1-p;
    k = norminv(1-(a/2));
        
    % Berechnung der unteren und der oberen Grenze des Konfidenzintervals
    % Standardabweichung geschätzt, daher tinv -> lt. Formelzettel
    ci(1,1) = mean(samples) - ((k*1/4)/sqrt(numel(samples)));
    ci(1,2) = mean(samples) + ((k*1/4)/sqrt(numel(samples)));
    ci(1,3) = mean(samples);
   
end
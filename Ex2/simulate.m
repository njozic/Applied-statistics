%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & Systems-Management
%------------------------------------------------------------------------

function simulate(n,k,p)

    % Aufruf der Zufallszahlengenerators
    rnd = rand_gen(n,k,p);
    % Berechnung des Erwartungswertes
    ew = (1/n)*sum(rnd);
    % Berechnung der Varianz
    vz = (1/(n-1)*sum((rnd-ew).*(rnd-ew)));
    
    fprintf('Der Erwartungswert beträgt:\t%0.3f\n', ew); 
    fprintf('Die Varianz beträgt:\t\t%0.3f\n', vz);
 
end
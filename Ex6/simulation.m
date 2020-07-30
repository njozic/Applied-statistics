%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic & Boris Brankovic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function Sn = simulation(n)

    % "Fairer W�rfel" f�r n Wiederholungen
    throw_dice = randi(6,1,n);
    
    % Funktion f�r Zufallsvariablen
    Sn = sum((throw_dice - 3.5)/sqrt(n*2.9167));
    
end
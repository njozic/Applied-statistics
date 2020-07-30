%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function sim = simulate(n)

    % Simulation von Zufallszahlen basierend auf der Funktion rand_gen
    sim = zeros(n,1);
    sim = rand_gen(n);      
end
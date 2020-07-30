%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & Systems-Management
%------------------------------------------------------------------------

function control()

    % Paramtersteuerung
    k = [1 2 3];
    p = [0.25 0.15 0.6];
    n = 2000;
    
    % Simulation
    simulate(n,k,p);
    
end
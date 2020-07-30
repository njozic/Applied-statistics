%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & Systems-Management
%------------------------------------------------------------------------

function control()

    % Parameter
    w = 1:1000;
    n = 10000;
    samplesize = 50;
    
    % Simulation
    simulate(w,samplesize,n);
    
end
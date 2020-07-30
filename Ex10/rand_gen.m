%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Authors:      Niko Jozic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function Xi = rand_gen(i)

    n = [100 1000 10000];
    mu = 2; si = sqrt(3);
    
    % Normalverteilte Stichprobe mit gegebener Varianz und gegebenem
    % Mittelwert
    
    Xi = normrnd(mu,si,n(i),1);
    
end
    





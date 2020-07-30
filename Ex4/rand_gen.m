%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & Systems-Management
%------------------------------------------------------------------------

function x = rand_gen(w,k)

    % Zufallsvariablen ohne Wiederholungen
    x = randsample(w,k,false);

end
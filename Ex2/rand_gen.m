%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & Systems-Management
%------------------------------------------------------------------------

function x = rand_gen(n,k,p)
    x = randsample(k,n,true,p);
end
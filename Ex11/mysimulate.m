%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Authors:      Niko Jozic & Boris Brankovic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function [sold, bought] =  mysimulate(probabilities, maxbought)
    sold = find(mnrnd(1, probabilities));
    bought = randi([1,maxbought]);
end
    

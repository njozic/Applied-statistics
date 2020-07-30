%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function [pe_even pe_odd] = pa_estimate(vect)    
    pe_even = numel(vect(mod(vect,2)==0)); 
    pe_odd = numel(vect(mod(vect,2)~=0));
end
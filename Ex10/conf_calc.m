%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Authors:      Niko Jozic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function [cc] = conf_calc(Xi,p,si,mu)

    a = 1-p;
    k = norminv(1-(a/2));
    l = (k*si)/(sqrt(numel(Xi)));
    
    cc(1,1) = (mu-l);
    cc(1,2) = (mu+l);
    
end
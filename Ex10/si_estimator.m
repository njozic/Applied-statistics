%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Authors:      Niko Jozic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function si = si_estimator(Xi,mu)
       
    si = 0;
    n = numel(Xi);
    
    for i=1:numel(Xi) 
           si = si + (1/(n-1))*(((Xi(i)-mu)^2));
    end
    
end
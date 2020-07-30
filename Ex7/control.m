%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function control(n)
% Wahrscheinlichkeit, dass Personen Zugelassen sind
empGranted = randsample([1 0],n,true,[(3/500) (497/500)]);
empCount = zeros(1,n);

% i=0;
% while(i < n) 
%                   
% %     if empGranted(i) == 1
% %         empCount(i) = randsample([1 0],1,true,[0.95 0.05]);
% %     else
% %         empCount(i) = randsample([1 0],1,true,[0.01 0.99]);
% %     end
% 
% end
            
            
            


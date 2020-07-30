
%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic & Boris Brankovic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function omega=generateRandom(n,pGranted)
    
    %Zufalls-Array berechnen basierend auf den Wahrscheinlichkeiten für die
    %Zugelassen und nicht Zugelassenen Personen
    omega = randsample([1 0],n,true,pGranted);
end


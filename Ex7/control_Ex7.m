
%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic & Boris Brankovic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function control_Ex7(n)

clc();
fprintf("Started Access-Simulation\n");

%Festlegen der jeweiligen Wahrscheinlichkeiten laut Angabe
pAuth = [0.95 0.05];
pNotAuth = [0.01 0.99];
pGranted = [3/500 497/500];

%Zähler-Variablen anfordern
peopleCount=simulate(n,pAuth,pNotAuth,pGranted);

%Wahrscheinlichkeit für eine zugelassene und auch authorisierte Person
%berechnen
result = peopleCount(1) / (peopleCount(1) + peopleCount(2));

fprintf('The probability of people who are granted and also authorized is -> %.2f % \n',result*100);

end

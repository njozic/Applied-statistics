
%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic & Boris Brankovic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function s = simulate(n,pAuth,pNotAuth,pGranted)

%Zufalls-Array abfragen
pArray = generateRandom(n,pGranted);
%Count-Variablen für authorisierte und nicht authorisierte Personen
countAllowed = 0;
countNotAllowed = 0;

for i=1:n
    %Prüfen welche Personen Zugelassen sind (Zugelassen == 1)
    %(Nicht Zugelassen == 0)
    if(pArray(i)==1)
        %Prüfen welche Personen von den zugelassenen auch authorisiert sind
        accessPeople(i) = randsample([1 0],1,true,pAuth);
    else
        %Prüfen welche Personen von den zugelassenen nicht authorisiert sind
        accessPeople(i) = randsample([1 0],1,true,pNotAuth);
    end
    %Prüfen welche von den authorisierten Personen auch tatsächlich
    %zugelassen bzw. nicht zugelassen sind
    if(accessPeople(i)==1)
        %Prüfen ob zugelassene und authorisierte Person -> Zähler für
        %erlaubte Person eröhen -> ansonsten Zähler für nicht erlaubte
        %Person
        if(pArray(i) == 1)
            countAllowed = countAllowed+1;
        else
            countNotAllowed = countNotAllowed+1;
        end
    end
end

%Rückgabe der jeweiligen Zähler
s = [countAllowed countNotAllowed];

end
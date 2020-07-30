
%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic & Boris Brankovic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function s = simulate(n,pAuth,pNotAuth,pGranted)

%Zufalls-Array abfragen
pArray = generateRandom(n,pGranted);
%Count-Variablen f�r authorisierte und nicht authorisierte Personen
countAllowed = 0;
countNotAllowed = 0;

for i=1:n
    %Pr�fen welche Personen Zugelassen sind (Zugelassen == 1)
    %(Nicht Zugelassen == 0)
    if(pArray(i)==1)
        %Pr�fen welche Personen von den zugelassenen auch authorisiert sind
        accessPeople(i) = randsample([1 0],1,true,pAuth);
    else
        %Pr�fen welche Personen von den zugelassenen nicht authorisiert sind
        accessPeople(i) = randsample([1 0],1,true,pNotAuth);
    end
    %Pr�fen welche von den authorisierten Personen auch tats�chlich
    %zugelassen bzw. nicht zugelassen sind
    if(accessPeople(i)==1)
        %Pr�fen ob zugelassene und authorisierte Person -> Z�hler f�r
        %erlaubte Person er�hen -> ansonsten Z�hler f�r nicht erlaubte
        %Person
        if(pArray(i) == 1)
            countAllowed = countAllowed+1;
        else
            countNotAllowed = countNotAllowed+1;
        end
    end
end

%R�ckgabe der jeweiligen Z�hler
s = [countAllowed countNotAllowed];

end
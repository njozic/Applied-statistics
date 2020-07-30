%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function f = rand_gen(n)

      % Paramter für die Generierung der Zufallszahl
      X = [1 2 3 4 5 6];
      p = [1/6 1/6 1/6 1/6 1/6 1/6];
      
      % Zuweisung einer Zufallszahl aus X mit Wahrscheinlichkeit p
      f = randsample(X,n,true,p);
end
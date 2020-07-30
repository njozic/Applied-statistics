%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Authors:      Niko Jozic & Boris Brankovic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

clc, clear all, format compact;

n = [1 2 3 5 10 20 50 100];
m = 1000;

Smn = zeros(m,numel(n));

for i = 1:numel(n)
   
   % Realisierung der Zufallsvariablen für Anzahl m
   for j = 1:m;
        Smn(j,i) = simulation(n(i));
   end
    
   % Histogramm 
   subplot(4,4,(i*2)-1);
   histogram(Smn(:,i));
   title(['n = ',num2str(n(i))]);
   
   % Verteilungsfunktion
   subplot(4,4,i*2);
   cdfplot(Smn(:,i));

end

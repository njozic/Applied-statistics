%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & Systems-Management
%------------------------------------------------------------------------

function simulate(w,samplesize,n)
    
    % Tempor�rer Ergebnisvektor
    tmp = size(1,n);

    for i=1:n 
       rnd = rand_gen(w,samplesize);
       m = 2*mean(rnd)-1;
       tmp(i) = m;
    end
    
    est = sum(tmp)/n;

    fprintf('Die Sch�tzung der Gr��e eines Wertebereichs von %d, ergab bei der Simulation mit einer Stichprobengr��e von %d und %d Durchl�ufen\neinen gesch�tzten Wertebereich von %0.3f.\n',length(w),samplesize,n,est);
    
end
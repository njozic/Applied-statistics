%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & Systems-Management
%------------------------------------------------------------------------

function simulate(w,samplesize,n)
    
    % Temporärer Ergebnisvektor
    tmp = size(1,n);

    for i=1:n 
       rnd = rand_gen(w,samplesize);
       m = 2*mean(rnd)-1;
       tmp(i) = m;
    end
    
    est = sum(tmp)/n;

    fprintf('Die Schätzung der Größe eines Wertebereichs von %d, ergab bei der Simulation mit einer Stichprobengröße von %d und %d Durchläufen\neinen geschätzten Wertebereich von %0.3f.\n',length(w),samplesize,n,est);
    
end
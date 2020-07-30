%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Authors:      Niko Jozic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function sim = simulate(i,p)

    Xi = rand_gen(i);
    mu = mu_estimator(Xi);
    si = si_estimator(Xi,mu);
    ce = conf_calc(Xi,p,si,mu);
    cg = conf_calc(Xi,p,sqrt(3),2);
    
    sim = zeros(1,9);
    
    sim(1,1)=numel(Xi);    
    sim(1,2)=2;
    sim(1,3)=3;
    sim(1,4)=cg(1,1);
    sim(1,5)=cg(1,2);
    sim(1,6)=mu;
    sim(1,7)=si;
    sim(1,8)=ce(1,1);
    sim(1,9)=ce(1,2);    
end
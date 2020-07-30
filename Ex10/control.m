%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Authors:      Niko Jozic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function control(p)

    n = zeros(3,1);
    mu_geg = zeros(3,1);
    si_geg = zeros(3,1);
    li_konf_geg = zeros(3,1);
    re_konf_geg = zeros(3,1);
    mu_gesch = zeros(3,1);
    si_gesch = zeros(3,1);
    li_konf_gesch = zeros(3,1);
    re_konf_gesch = zeros(3,1);
    
    for i=1:3
         
        sim = simulate(i,p);  
        
        n(i,1) = sim(1,1);
        mu_geg(i,1) = sim(1,2);
        si_geg(i,1) = sim(1,3);
        li_konf_geg(i,1) = sim(1,4); 
        re_konf_geg(i,1) = sim(1,5); 
        mu_gesch(i,1) = sim(1,6); 
        si_gesch(i,1) = sim(1,7); 
        li_konf_gesch(i,1) = sim(1,8); 
        re_konf_gesch(i,1) = sim(1,9); 
            
    end
    
    T = table;
    T.n = num2str(n);

    % Vorgegeben
    T.mu_geg = num2str(mu_geg);
    T.si_geg = num2str(si_geg);
    T.li_konf_geg = num2str(li_konf_geg);
    T.re_konf_geg = num2str(re_konf_geg);

    % Geschätzt
    T.mu_gesch = num2str(mu_gesch);
    T.si_gesch = num2str(si_gesch);
    T.li_konf_gesch = num2str(li_konf_gesch);
    T.re_konf_gesch = num2str(re_konf_gesch)
          
end
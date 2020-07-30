%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function control(n)

    samples_even = zeros(n,1);
    samples_odd = zeros(n,1);

    % Ergebnisvektor mit # gerader Augenzahl für n Simulationen
    for i = 1:n       
        [samples_even(i,1) samples_odd(i,1)] = pa_estimate(simulate(100));
    end
    
    % Berechnung eines 99% Konfidenzintervalls für gearde Augenzahlen
    ci_even = zeros(1,3);
    ci_even = ci_calc_emp(0.99,samples_even);
    
    % Berechnung eines 99% Konfidenzintervalls für ungerade Augenzahlen
    ci_odd = zeros(1,3);
    ci_odd = ci_calc(0.99,samples_odd);
    
    fprintf('Results for even numbers: \nCl=%0.2f, Cu=%0.2f, Mean=%0.2f\n\n',ci_even(1,1), ci_even(1,2), ci_even(1,3));
    fprintf('Results for odd numbers: \nCl=%0.2f, Cu=%0.2f, Mean=%0.2f\n\n',ci_odd(1,1), ci_odd(1,2), ci_odd(1,3));
    
end
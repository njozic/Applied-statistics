%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic
% Departement:  Information Technology & Systems-Management
%------------------------------------------------------------------------

clc, clear all, format compact;

n=1000;
counter = 0;
true = 0;

for i = 1:n
    m = 3;
    f = zeros(m,1);
    
    for i = 1:m
        f(i) = randi(2)-1;
        
    end
    
    if f(1) == 1 && f(2) == 1 || f(3) == 1 && f(2) == 1 || f(1) == 1 && f(3) == 1
        counter = counter + 1;

        if f(3) == 0
            true = true +1;
        end
            
    end

end

sprintf("Wahrscheinlichkeit: %0.3f",true/counter)
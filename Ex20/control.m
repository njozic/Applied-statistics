function control(n)
clc; 
N = 100;
w_stage_1 = [0.5, 0.5]; 
w_stage_2 = [0.6, 0.4]; %skewed first nail

for i=1:N
    x(i) = simulate(w_stage_1);
    x(i) = x(i) + simulate(w_stage_1);
end

for i=0:2
    box(i+1) = sum(x==i);
end

for i = 0:2
    expected_distribution(i+1) = N*nchoosek(2,i)*0.5^i*0.5^(2-i);
end

bins = 1:3;
[h,p] = chi2gof(bins, 'ctrs',bins,'frequency',box,'expected',expected_distribution,'nparams',0);
%[h1, p1] = chi2gof(x, 'Expected', expected_distribution)
fprintf('H0 es gibt keine schiefen Naegel, H1 es gibt schiefe Naegel\n');
if h ==0
    fprintf('Ex22) H0 akzeptiert mit p = %.4f\n',p);
else
    fprintf('Ex22) Wir verwerfen die H0 Hypothese zu gunsten von H1  p=%.4f\n',p);
end

hsum = 0;
fprintf('\nH0 es gibt keine schiefen Naegel, H1 es gibt schiefe Naegel\n');
fprintf('Der erste Nagel wurde auf 60%% schief eingestellt!!\n');
for j=1:n
    for i=1:N
        x(i) = simulate(w_stage_2);
        x(i) = x(i) + simulate(w_stage_1);
    end

    for i=0:2
        box(i+1) = sum(x==i);
    end

    h_gezinkt = chi2gof(bins, 'ctrs',bins,'frequency',box,'expected',expected_distribution,'nparams',0);
    hsum= hsum + h_gezinkt;

end
fprintf('Ex22) In %d Faellen von insgesamt %d Simulationen wird die H0 Hypothese zu gunsten von H1 verworfen\n',hsum,n);
fprintf('Der chi2gof() Test erkennt den ersten schiefen Naegel somit nicht sehr zuverlaessig\n');
end

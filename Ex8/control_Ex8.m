
%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic & Boris Brankovic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

function control_Ex8(k)

%Degrees of freedom for T-Student Distribution
n = [1 2 3 4 5 10];
%Anzahl der Datenwerte für die jeweilige Verteilung
x = [0:0.1:k]; 

%Density Function of T-Student Distribution
y1 = tpdf(x,n(1));
y2 = tpdf(x,n(2));
y3 = tpdf(x,n(3));
y4 = tpdf(x,n(4));
y5 = tpdf(x,n(5));
y6 = tpdf(x,n(6));

%Density Function of Chi-Square Probability
ch1 = chi2pdf(x,n(1));
ch2 = chi2pdf(x,n(2));
ch3 = chi2pdf(x,n(3));
ch4 = chi2pdf(x,n(4));
ch5 = chi2pdf(x,n(5));
ch6 = chi2pdf(x,n(6));


%Plot Student-T Distribution
figure(1);
subplot(3,2,1);
plot(x,y1,'Color','black','LineStyle','-');
hold on
norm = normpdf(x,0,1);
plot(x,norm,'r-');
title(['k = ' num2str(k) ' | n =' num2str(n(1))]);
legend('Student-T distribution','Normal-Distribution');
xlabel('x');
ylabel('y');

subplot(3,2,2);
plot(x,y2,'Color','yellow','LineStyle','-');
hold on
norm = normpdf(x,0,1);
plot(x,norm,'r-');
title(['k = ' num2str(k) ' | n =' num2str(n(2))]);
legend('Student-T distribution','Normal-Distribution');
xlabel('x');
ylabel('y');

subplot(3,2,3);
plot(x,y3,'Color','blue','LineStyle','-');
hold on
norm = normpdf(x,0,1);
plot(x,norm,'r-');
title(['k = ' num2str(k) ' | n =' num2str(n(3))]);
legend('Student-T distribution','Normal-Distribution');
xlabel('x');
ylabel('y');

subplot(3,2,4);
plot(x,y4,'Color','green','LineStyle','-');
hold on
norm = normpdf(x,0,1);
plot(x,norm,'r-');
title(['k = ' num2str(k) ' | n =' num2str(n(4))]);
legend('Student-T distribution','Normal-Distribution');
xlabel('x');
ylabel('y');

subplot(3,2,5);
plot(x,y5,'Color','red','LineStyle','-');
hold on
norm = normpdf(x,0,1);
plot(x,norm,'r-');
title(['k = ' num2str(k) ' | n =' num2str(n(5))]);
legend('Student-T distribution','Normal-Distribution');
xlabel('x');
ylabel('y');

subplot(3,2,6);
plot(x,y6,'Color','green','LineStyle','-');
hold on
norm = normpdf(x,0,1);
plot(x,norm,'r-');
title(['k = ' num2str(k) ' | n =' num2str(n(6))]);
legend('Student-T distribution','Normal-Distribution');
xlabel('x');
ylabel('y');

% Plot Chi-Square Distribution
figure(2)
subplot(3,2,1);
plot(x,ch1,'Color','black','LineStyle','-');
hold on
norm = normpdf(x,0,1);
plot(x,norm,'r-');
title(['k = ' num2str(k) ' | n =' num2str(n(1))]);
legend('Chi-Square distribution','Normal-Distribution');
xlabel('x');
ylabel('y');

subplot(3,2,2);
plot(x,ch2,'Color','yellow','LineStyle','-');
hold on
norm = normpdf(x,0,1);
plot(x,norm,'r-');
title(['k = ' num2str(k) ' | n =' num2str(n(2))]);
legend('Chi-Square distribution','Normal-Distribution');
xlabel('x');
ylabel('y');

subplot(3,2,3);
plot(x,ch3,'Color','blue','LineStyle','-');
hold on
norm = normpdf(x,0,1);
plot(x,norm,'r-');
title(['k = ' num2str(k) ' | n =' num2str(n(3))]);
legend('Chi-Square distribution','Normal-Distribution');
xlabel('x');
ylabel('y');

subplot(3,2,4);
plot(x,ch4,'Color','green','LineStyle','-');
hold on
norm = normpdf(x,0,1);
plot(x,norm,'r-');
title(['k = ' num2str(k) ' | n =' num2str(n(4))]);
legend('Chi-Square distribution','Normal-Distribution');
xlabel('x');
ylabel('y');

subplot(3,2,5);
plot(x,ch5,'Color','red','LineStyle','-');
hold on
norm = normpdf(x,0,1);
plot(x,norm,'r-');
title(['k = ' num2str(k) ' | n =' num2str(n(5))]);
legend('Chi-Square distribution','Normal-Distribution');
xlabel('x');
ylabel('y');

subplot(3,2,6);
plot(x,ch6,'Color','green','LineStyle','-');
hold on
norm = normpdf(x,0,1);
plot(x,norm,'r-');
title(['k = ' num2str(k) ' | n =' num2str(n(6))]);
legend('Chi-Square distribution','Normal-Distribution');
xlabel('x');
ylabel('y');


end

%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Niko Jozic & Boris Brankovic
% Departement:  Information Technology & System-Management
%------------------------------------------------------------------------

%Excercise8
clc();
clf('reset');
%Anzahl der Datenwerte für die Verteilungen
n=50;
control_Ex8(n);

fprintf('Frage 1: Kann N(0,1) mit einer T-Verteilung approximiert werden?\n');
fprintf('----------------------------------------------------------------\n');
fprintf('Antwort: Ja, die Normalverteilung N(0,1) kann durch die T-Verteilung\napproximiert werden. Je höher die Freiheitsgrade umso besser ist die Approximation.\n\n');

fprintf('Frage 2: Kann N(0,1) mit einer QHI²-Verteilung approximiert werden?\n');
fprintf('-------------------------------------------------------------------\n');
fprintf('Antwort: Nein, die Approximation durch eine QHI²-Verteilung mit Werten kleiner 0 ist nicht möglich, da das Ergebnis null sein könnte.\n');
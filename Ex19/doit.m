%------------------------------------------------------------------------
% Course:       Applied Statistics
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Moritz Schreyer & Niko Jozic
% Departement:  Information Technology & Systems
%               Applied Image & Signal Processing
% 
%------------------------------------------------------------------------
% Script to start the simulation
%
% The story: 
% The flower shop from exercise 11 builds a cold storage. Hence, the shop is able to sell flowers
% for one single day after they were purchased for a price of 5 Euro, but only if all flowers (the ones
% purchased for the day) already have been sold and there is further demand. Justify the choice of the
% appropriate statistical test. Analyse if the introduction of the cold storage did cause a significant
% change on the profits expectation value at a daily flower purchase of 5 or 10 flowers (1% level of
% significance). At what approximate sample size (number of simulated days) is the statistical test able
% to recognise the additional returns?
%------------------------------------------------------------------------

clc; clear all; close all;

simulation_times = 100; 
control(simulation_times);



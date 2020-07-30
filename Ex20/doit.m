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
% The story: Implement a simulation of a galton board with n = 2 layers: from the top, a ball runs onto the
% first nail and subsequently to the left or the right, each time onto a second nail. If the ball runs
% twice left from the nail, it drops into container B0. If the ball runs one time left and then right or
% vice versa, it drops into container B1. All other balls drop into container B2. In total N = 100 balls
% are rolled. The expected number of balls follows (based on the linearity of the expectation value) a
% binominal distribution multiplied with the number N. Therefore, the direction of the ball at a nail to the right is considered as ’success’ and their number
% counted to compute container k, into which the ball drops. Which statistical test find here its correct
% application and can the test reliably recognise a skewed first nail, which directs the ball in 60% to
% the left (5% level of significance)?
% 
%------------------------------------------------------------------------

clear all; close all; clc;


%Simulation rounds 
n=1000;

control(n);

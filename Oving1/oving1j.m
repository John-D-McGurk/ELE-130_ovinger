%--------------------------------------------------- 
% j) Nyttige kommandoer  
%  
%  find, NaN
%--------------------------------------------------- 

clear; close all; clc

% laster inn .mat-fil bestående av tidsvektor "Tid" og 
% måling "Lys" som er fra lyssensoren 
load('Lego_measurements_oppg_1j.mat')         

% gir variablene nytt navn i henhold til kompendiet
u = Lys;
t = Tid;

% Figur 1 med 3x1 subplot
figure

% -----------------------------------------
% Plotting av data kun mot indeks
subplot(3,1,1)
plot(u,'b')  % kun ett argument i plot-kallet = plotting mot indeks
grid
title('M{\aa}lesignal $\{u_k\}$ som funksjon av indeks $k$')
xlabel('indeks $k$')
ylim([0 80])



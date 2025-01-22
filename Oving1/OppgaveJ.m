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

% Trimmer bort konstant startverdi
trim_verdi = 37;
u_trimmed = u(1,trim_verdi:end);
tid_trimmed = Tid(1,1:end - (trim_verdi - 1));

subplot(3,1,2)
plot(tid_trimmed, u_trimmed)
title('Fjernet f{\o}rste delen av $\{u_k\}$, plottet som funksjon av tiden $t$')
xlabel('tiden $t$')

% Fjerner uteliggerer
u_uteliggerer = find(u_trimmed < 30 | u_trimmed > 60);
u_ferdig = u_trimmed;
u_ferdig(u_uteliggerer) = NaN;

% Finner likevektsverdien
C = (max(u_ferdig) + min(u_ferdig)) / 2;

% Fjerner likevektsverdien
u_ferdig = u_ferdig - C;


subplot(3,1,3)
plot(tid_trimmed, u_ferdig)

title('Fjernet likevektsverdien fra $\{u_k\}$, plottet som funksjon av tiden $t$')
xlabel('tiden $t$')

% Regner ut amplitude og frekvens
a_est = 9.8;
omega_est = 2* pi / 4.8;

% Regner ut sinusuttrykk
u_est = a_est * sin(omega_est * tid_trimmed); 

figure
plot(tid_trimmed, u_ferdig)
hold on
plot(tid_trimmed, u_est)
title('Justert m{\aa}lesignal $\{u_k\}$ og estimat av sinusuttrykk $u(t)$')
xlabel('tiden $t$')
xlim([0,tid_trimmed(end)])
% -----------------------------------------------------
% a) Nyttige kommandoer
%
% size, length, xlim, hold, subplot, 
% plot, grid, max, min, diff, title, xlabel, 
%--------------------------------------------------

clear; close all; clc

% Leser inn målinger. 
% Oppdater filnavnet til Excel-filen
measurements = readtable('inclination.xls');
t = measurements{:,1};
x = measurements{:,2};

% Justerer datasettet
%   - Bruk size-kommandoen til å finne ut om t og x er 
%     stående eller liggende vektorer. 
%   - Legg til ett element i både t og x.
t = [0; t];
x = [0; x];

% Plot resultat
figure
subplot(2,1,1)
plot(t,x,'b-x')
grid on
xlabel('tid [s]')
ylabel('Vinkel [$^{\circ}$]')
title('M{\aa}lesignal $\{x_k$\}, tilt opp og ned')
legend('M{\aa}linger $\{x_k$\}')





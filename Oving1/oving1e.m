%--------------------------------------------------- 
% e) Nyttige kommandoer                    
%
%  histogram, ceil, floor, axis, xlim
%  text, sprintf, ylabel
% --------------------------------------------------- 

clear; close all; clc

% Leser inn målinger.
measurements = readtable('Inclination.....xls');
t = measurements{:,1};
x = measurements{:,2};

% Justerer datasett
t = ..;
x = ..;


figure
subplot(2,1,1)
plot(t,x,'b-x')
grid on
xlabel('tid [s]')
ylabel('Vinkel [$^{\circ}$]')
title('M{\aa}lesignal $\{x_k$\}, tilt-vinkel opp og ned')
legend('M{\aa}linger $\{x_k$\}')

% Plott histogrammet til "x" i subplot(2,1,2) med
% 
%   x_prop = histogram(x)  -> uten semikolon
% 
% Da vil i tillegg mye informasjon om histogrammet 
% presenteres i Command Window. 
% 
% I koden kan du velge å benytte 
%    - x_prop.BinEdges 
%    - x_prop.BinWidth 
%    - x_prop.BinLimits 
% til å hente ut data fra histogrammet til "x" som
% du kan bruke i programmeringen. 

subplot(2,1,2)
x_prop = histogram(x)  % ---> sjekk Command Window
ylabel(['\# m{\aa}linger i intervallene']);
xlabel('Intervall i $\{x_k\}$')
title('Automatisk inndeling i intervall ved bruk av {\tt histogram(x)}')
xlim(x_prop.BinLimits)


%--------------------------------------
% Figur 2.
%--------------------------------------
figure(2)

% Plotter histogrammet til x hvor vi styrer
% antall intervall (nbins)
subplot(2,1,1)



% Plotter histogrammet til x hvor vi styrer
%   - intervallgrensene (max,min) 
%   - intervallbredden (step) 
% edges = min:step:max
subplot(2,1,2)




% Indikering av middelverdi og standardavvik i 
% ett av histogrammene

%---------------------------------------------------
% e) Nyttige kommandoer
%
%  histogram, ceil, floor, axis, xlim
%  text, sprintf, ylabel
% ---------------------------------------------------

clear; close all; clc

% Leser inn målinger.
measurements = readtable('inclination.xls');
t = measurements{:,1};
x = measurements{:,2};

% Justerer datasett
t = [0; t];
x = [x(1); x];


figure
subplot(2,1,1)
plot(t,x,'b-x')
grid on
xlabel('tid [s]')
ylabel('Vinkel [$^{\circ}$]')
title('M{\aa}lesignal $\{x_k$\}, tilt-vinkel opp og ned')
legend('M{\aa}linger $\{x_k$\}')

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
num_bins = 20;
x_prop_2 = histogram(x, num_bins)
ylabel(['\# m{\aa}linger i intervallene']);
xlabel('Intervall i $\{x_k\}$')
title(['Selvvalgt oppdeling i {\tt nbins=',num2str(num_bins),'} interval'])



% Plotter histogrammet til x hvor vi styrer
%   - intervallgrensene (max,min)
%   - intervallbredden (step)
% edges = min:step:max
subplot(2,1,2)
num_bins = floor(min(x)):8:ceil(max(x));
histogram(x, num_bins)
hold on;
title(['Selvvalgt oppdeling som {\tt edges[',num2str(num_bins(1)),',', ...
    num2str(diff(num_bins(1,1:2))), ',', num2str(num_bins(end)), ']}'])
ylabel(['\# m{\aa}linger i intervallene']);
xlabel('Intervall i $\{x_k\}$')

% Indikering av middelverdi og standardavvik i
% ett av histogrammene
middelverdi = mean(x);
std_avvik = std(x);

% Finner ylim/2 for plassering av std_avvik linjen
y_grenser = ylim;
std_avvik_y = y_grenser(2) / 2;

% Plotter linjer som viser middelverdi og standardavvik
xline(middelverdi, 'r', 'LineWidth', 5)
line([middelverdi,middelverdi + std_avvik], [std_avvik_y, std_avvik_y], ...
    'LineWidth', 5, 'Color', 'g');

% Viser legende
legend('Fordeling av m{\aa}linger', ['Middelverdi {$\bar{x}$}=', ...
    num2str(middelverdi)], ['Standardavvik {$\sigma$}=', ...
    num2str(std_avvik)])

hold off;
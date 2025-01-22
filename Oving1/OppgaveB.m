%--------------------------------------------------
% b) Nyttige kommandoer
%
% mean, std, find, ones, num2str
%--------------------------------------------------

clear; close all;clc

% Leser inn målinger.
measurements = readtable('inclination.xls');
t = measurements{:,1};
x = measurements{:,2};

% Justerer datasettet
t = [0; t];
x = [x(1); x];

% Finn standardavvik og middelverdi
standard_avvik = std(x);
middelverdi = mean(x);

% Finn indekser av verdiene innenfor standardavvik
innen_std_rad = find(x > middelverdi - standard_avvik & x < middelverdi + standard_avvik);

figure

% Plotter maalinger
plot(t,x,'b-x')
hold on;
plot(t(innen_std_rad), x(innen_std_rad), 'ro')

% Plot middelverdi og standardavvik grenser
plot([t(1), t(end)], [middelverdi + standard_avvik, middelverdi + standard_avvik], 'k:')
plot([t(1), t(end)],[middelverdi,middelverdi], 'k--')
plot([t(1), t(end)], [middelverdi - standard_avvik, middelverdi - standard_avvik], 'k:')

% Finn andel punkter innenfor standardavvik grenser i prosent
andel_innenfor = sprintf('%.1f', size(innen_std_rad) / size(x) * 100);


grid on
xlabel('tid [s]')
ylabel('Vinkel [$^{\circ}$]')
legend('M{\aa}linger $\{x_k$\}', 'M{\aa}linger innenfor et standardavvik', ...
    '{\O}vre grense standardavvik', 'Middelverdi', 'Nedre grense standardavvik', 'Location','southwest')

% Tittel med andel innenfor standardavvik
title(['Andel m{\aa}linger innenfor standardavviket: ', andel_innenfor, '\%'])
% title-funksjon kan brukes på følgende måte
%  - title(' ....  ')                     % 1 linje med ren tekst
%  - title(' ...  ',' ... ')              % 2 linjer med ren tekst
%  - title([' ..  ',num2str(..),' .. '])  % husk [ ] for å bygge opp én
%                                         % streng av flere delstrenger
%  - title([' ...  ',...                  % bruk av ",..." for å dele opp
%            num2str(..),...              % strengen over flere linjer.
%           ' ... '])                     % num2str kan ta 2 argument

% Eksempel på bruk av legend-funksjon med 3 plot
% - legend(' ....  ',...
%         [' ..  ',num2str(..),' .. '],...
%          ' ... '])



%--------------------------------------------------
% b) Nyttige kommandoer
%
% mean, std, find, ones, num2str
%--------------------------------------------------

clear; close all;clc

% Leser inn målinger. 
measurements = readtable('Inclination.....xls');
t = measurements{:,1};
x = measurements{:,2};

% Justerer datasettet
t = ..;
x = ..;

figure
plot(t,x,'b-x')
grid on
xlabel('tid [s]')
ylabel('Vinkel [$^{\circ}$]')
legend('M{\aa}linger $\{x_k$\}')

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
 


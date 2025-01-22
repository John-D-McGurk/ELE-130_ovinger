%--------------------------------------------------
% c) Nyttige kommandoer
%
% sort, round, fix, floor, ceil, sgtitle
%--------------------------------------------------
clear; close all;clc

% Leser inn målinger.
measurements = readtable('inclination.xls');
t = measurements{:,1};
x = measurements{:,2};

% Justerer datasett
t = [0; t];
x = [x(1); x];

% Sorterer målingene
x = sort(x, "descend");

% Justerer ned størrelsen på målingene slik at avrundinger 
% til nærmeste heltall blir godt synlige
% Sjekk verdiene av x i Command Window og bekreft at de 
% varierer mellom +/- 2.
x = x/75;

% Avrunder til naermest heltal
naermest_heltal = fix(x);

% Avrunder positive verdier opppover og negative verdier nedover
avrund_opp_ned = [ceil(x(x > 0)); floor(x(x < 0))];

% Avrunder alt oppover
avrund_opp = ceil(x);

% Avrund alt nedover
avrund_ned = floor(x);

figure

% Plotter avrundet til naermest heltal
subplot(2,2,1);
plot(x, '-x');
hold on;
plot(naermest_heltal, '-x');
hold off;

% Tittel og legende
title('Avrund til n{\ae}rmeste heltal');
legend('{\{\(x_k\)\}}', 'avrundet')

% Plotter opp og ned avrunding
subplot(2,2,2);
plot(x, '-x');
hold on;
plot(avrund_opp_ned, '-x');
hold off;

% Tittel og legende
title({'Avrund positive verdier opp', 'og negative verdier ned'})
legend('{\{\(x_k\)\}}', 'avrundet')


% Plotter avrundet til naermest heltal
subplot(2,2,1);
plot(x, '-x');
hold on;
plot(naermest_heltal, '-x');
hold off;

% Tittel og legende
title('Avrund til n{\ae}rmeste heltal');
legend('{\{\(x_k\)\}}', 'avrundet')

% Plotter avrunding oppover
subplot(2,2,3);
plot(x, '-x');
hold on;
plot(avrund_opp, '-x');
hold off;

% Tittel og legende
title('Avrund alt oppover')
legend('{\{\(x_k\)\}}', 'avrundet')

% Plotter avrunding nedover
subplot(2,2,4);
plot(x, '-x');
hold on;
plot(avrund_ned, '-x');
hold off;

% Tittel og legende
title('Avrund alt nedover')
legend('{\{\(x_k\)\}}', 'avrundet')
clear; close all; clc

% Leser inn målinger.
% Oppdater filnavnet til Excel-filen
measurements = readtable('inclination.xls');
t = measurements{:,1};
x = measurements{:,2};

disp('running')

% Justerer datasettet
% - Bruk size-kommandoen til å finne ut om t og x er
% stående eller liggende vektorer.
% - Legg til ett element i både t og x.

t = [0; t];
x = [x(1); x];

% Finner max og min verdier av x
[v_max_x, idx_max_x] = max(x);
[v_min_x, idx_min_x] = min(x);

% Finner Delta x mellom hver punkt
deltax = diff(x);
t_deltax = t(1:end-1);

[v_max_deltax, idx_max_deltax] = max(deltax);
[v_min_deltax, idx_min_deltax] = min(deltax);

% Plotter "inclination" datapunkter
subplot(2,1,1);


plot(t, x, '-x');

hold on;

% Plotter max punkt
plot(t(idx_max_x), v_max_x, '*', 'MarkerSize', 12, 'LineWidth', 1, 'Color', 'blue');

% Plotter min punkt
plot(t(idx_min_x), v_min_x, 'o', 'MarkerSize', 12, 'LineWidth', 1, 'Color', 'blue');

% Plotter max positiv differanse
plot([t(idx_max_deltax), t((idx_max_deltax + 1))], ...
    [x(idx_max_deltax, 1), x(idx_max_deltax + 1)], ...
    '-', 'LineWidth', 2, 'Color', 'green');

% Plotter min positiv differanse
plot([t(idx_min_deltax), t((idx_min_deltax + 1))], ...
    [x(idx_min_deltax, 1), x(idx_min_deltax + 1)], ...
    '-', 'LineWidth', 2, 'Color', 'red');

% Gir navn til akser og subplot

xlabel('Tid[s]');
ylabel('Vinkel[$^\circ$]');
title('M{\aa}lesignal \{{\(x_k\)}\}, tilt-vinkel opp og ned');

% Viser legende
legend('M{\aa}linger', 'Maximumsverdi', 'Minimumsverdi', 'St{\o}rste positiv differanse', 'St{\o}rste negativ differanse', 'Location', 'southwest')

hold off;

% Plotter "Delta X" datapunkter
subplot(2,1,2);

plot(t_deltax, deltax, '-x');
hold on;

% Plotter max differanse
plot(t_deltax, deltax, '*', 'MarkerIndices', idx_max_deltax, ...
    'MarkerSize', 12, 'LineWidth', 1, 'Color', 'green');

% Plotter min differanse
plot(t_deltax, deltax, '*', 'MarkerIndices', idx_min_deltax, ...
    'MarkerSize', 12, 'LineWidth', 1, 'Color', 'red');

% Gir navn til akser og subplot
xlabel('Tid[s]');
ylabel('Vinkelgrader[$^\circ$]');
title('Elementvis differanse i \{{\(x_k\)}\}')

% Viser legende
legend('Differanse i m{\aa}linger', 'St{\o}rste positiv differanse', 'St{\o}rste negativ differanse', 'Location', 'southwest')
hold off;

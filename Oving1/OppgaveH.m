%--------------------------------------------------------- 
% h) Nyttige kommandoer:
%
% while, input, if, isempty, tic, toc
%--------------------------------------------------------- 

clear; close all; clc

% initialisering
Tid(1) = 0;
Key(1) = 0;
Ts(1) = 0;

% Start klokken
tic;

% Starter indeks pa 2 fordi forste indeks er alerede initialisert
indeks = 2;
while toc < 10
    bruker_input = input('Skriv et tall: ');

    % Nar brukerinput ikke er tom kjores koden
    if ~isempty(bruker_input)

        % Sett inn nye verdier i vektorene
        Tid(indeks) = toc;
        Key(indeks) = bruker_input;
        Ts(indeks) = Tid(indeks) - Tid(indeks - 1);

        % Pluss 1 til indeksen for neste runde
        indeks = indeks + 1;
    end
end


figure

% Plotter tallverdi over tid
subplot(2,1,1);
plot(Tid, Key, '-o');

title('Tallverdier mot tid')
legend('Tallverdier trykket inn')
ylabel('Tallverdi')
xlabel("Tid{$[s]$}")

% Plotter tidsavstand over tid
subplot(2,1,2);
plot(Tid, Ts, '-o')
legend('Tidsavstand mellom tidspunktene')
ylabel('{$[Sekund]$}')
xlabel("Tid{$[s]$}")
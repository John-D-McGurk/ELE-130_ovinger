%--------------------------------------------------
% c) Nyttige kommandoer
%
% sort, round, fix, floor, ceil, sgtitle
%--------------------------------------------------
clear; close all;clc

% Leser inn målinger.
measurements = readtable('Inclination.....xls');
t = measurements{:,1};
x = measurements{:,2};

% Justerer datasett
t = ..;
x = ..;

% Sorterer målingene
x = sort(x,'..') 

% Justerer ned størrelsen på målingene slik at avrundinger 
% til nærmeste heltall blir godt synlige
% Sjekk verdiene av x i Command Window og bekreft at de 
% varierer mellom +/- 2.
x = x/..;


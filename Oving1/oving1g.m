%--------------------------------------------------- 
% g) Nyttige kommandoer
%  
% sin, findpeaks, text, arrow 
%--------------------------------------------------- 


clear; close all; clc

% definer tidvektoren t. Velg passe steg
t = ..
u = ..;
y = ..;

% Den ene måten å bruke findpeaks på er vist i figur 1,
% hvor kurvene plottes og topp-punktene indikeres direkte. 
% I subplot(2,1,1) plottes u mot indeksene k og 
% i subplot(2,1,2) plottes u mot tiden t.
figure(1)
subplot(2,1,1)
findpeaks(..)  
xlabel('indeks $k$') 
title(['Kommandoen {\tt findpeaks(u)} plotter ' ...
    '$\{u_k\}$ som funksjon av indeks $k$'])

subplot(2,1,2)
findpeaks(..)
xlabel('tid [s]') 
title(['Kommandoen {\tt findpeaks(u,t)} plotter ' ...
    '$\{u_k\}$ som funksjon av tid $\{t_k\}$'])


% For å vise den andre måten å bruke findpeaks på,
% benytter vi først findpeaks som i figur 1 for 
% signalene u og y. Deretter benytter vi findpeaks
% en gang til med returargument, hvor returverdiene
% brukes til å beregne 
%  - periode T_p, 
%  - vinkelfrekvens w,
%  - likevektsverdier u_A og y_A 
%  - amplituder U og Y
figure(2)
findpeaks(u,t)
hold on
findpeaks(y,t)

% Finner maksverdiene og tilhærende indeks
[u_pks,u_locs] = findpeaks(u);
[y_pks,y_locs] = findpeaks(y);

% Finner tidspunktet tilsvarende indeksene
t_pks_u = t(..);
t_pks_y = t(..);

% Beregner T_p ut fra verdiene i t_pks_y 
T_p = ..;

% Beregner w ut fra T_p 
w = ..;

% Beregner likevekstverdi/konstantleddet med max og min
u_A = ..
y_A = ..

% Beregner amplitudene med max og min
U = ..
Y = ..

% Beregner faseforsyvningen
delta_t_phi = t_pks_u .. t_pks_y
phi = ..
phi_d = ..

legend('$u(t)=3.2\sin(4t)+2$',...
    'max-verdier i $u(t)$',...
    '$y(t)=1.4\sin(4t-1.9)+3$',...
    'max-verdier i $y(t)$',...
    'location','southeast')

title('Signalene $u(t)$ og $y(t)$ med automatisk indikering av maksverdier')


% Legg på piler og linjer og tekst som viser
% beregnede verdier. Bruk Insert-meny og velg
%    - TextBox
%    - Line
%    - Text Arrow
% Under ligger eksempler på LaTeX-kode som du kan 
% kopiere inn i TextBox og Text Arrow-menyene. 
% Sjekk at tallverdiene er riktig.
%    - For å fjerne den sorte rammen rundt tekstboksen, 
%      høyreklikk på rammen, velg Edge Color...
%    - For å legge til hvit bakgrunn for hele teksten, 
%      høyreklikk på rammen, velg Background Color...
%
% Du kan kopiere tekstbokser så slipper du å gjøre disse
% justeringene hver gang

%{

$T_p{\approx}$1.58 s, $\Rightarrow \omega{\approx}$ 3.98 rad/s


$\Delta t_{\varphi}{\approx}= - 0.46$ s \\
$\quad \Downarrow$ \\
$\varphi{\approx} -1.83$ rad \\
$\quad \Downarrow$ \\
$\varphi^{\circ}{\approx}-104.8^{\circ}$


$u_A{\approx}2$


$U{\approx}3.2$


$y_A{\approx}3$


$Y{\approx}1.4$

%}





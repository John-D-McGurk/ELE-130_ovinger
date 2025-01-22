%--------------------------------------------------- 
% f) Nyttige kommandoer
%  
% sum, exp, factorial, log10, log, ./, .*, .^, 
%--------------------------------------------------

clear; close all; clc

x=2; 
M=..;

% Beregn e_xM med elementvise operasjoner på én kodelinje. 
% Tips: Definer først n som en vektor
n = ..
e_xM = ..
disp(['elementvis med M=',num2str(M),', e_xM = ',num2str(e_xM)])

% Beregn e^x
e_x = ..
disp(['exp-funksjonen,       e^x = ',num2str(e_x)])

% Beregn forskjellen mellom disse
avvik = e_x - e_xM;
disp(['Avviket mellom exp-funksjon og elementvis er ',num2str(avvik)])


% Beregn avvik(k) = e_x - e_xM(k) som funksjon av økende M i en
% for løkke. Gjenbruk elementvis-koden for e_xM i linje 15.
clear e_xM  % sletter variabelen e_xM
M_vec = 0:M;
for k = ...
   .
   .
   avvik(k) =
end

% Plotter e_x og e_xM som funksjon av M.
figure(1)
subplot(3,1,1)
.
.
legend('$e^x$ for $x{=}2$, uavhengig av $M$',...
    '$$e(x,M)=\sum_{n=0}^{M}\frac{x^n}{n!}$$ for $x{=}2$ og {\o}kende $M$',...
    'location','best')
xlabel('{\O}vre grenseverdi for $M$ i $e(x,M)$')
grid
xticks(0:M)
ylim([-1 10])


% Plotter avvik som funksjon av M.
subplot(3,1,2)
.
xlabel('{\O}vre grenseverdi for $M$ i $e(x,M)$')
legend('avvik($M$) = $e^x-e(x,M)$ for $x=2$')
grid
xticks(0:M)
ylim([-1 10])


% Plotter log10(avvik) som funksjon av M.
subplot(3,1,3)


%--------------------------------------------------
% d) Nyttige kommandoer
% 
%  sqrt, .^ (elementvise operasjoner), for-løkke 
%--------------------------------------------------
clear; close all;clc

% Leser inn målinger.
measurements = readtable('Inclination.....xls');
t = measurements{:,1};
x = measurements{:,2};

% Justerer datasett
t = ..;
x = ..;

figure
plot(t,x,'b-x')
grid on
xlabel('tid [s]')
ylabel('Vinkel [$^{\circ}$]')


M = ..  % antall elementer

% Beregn middelverdi og deretter standardavvik rekursivt
for k..

   mean_x(k) = ..

   std_x(k) = ..
end

disp(['mean_x(end) = ',num2str(mean_x(end),4)])
disp(['std_x(end) = ',num2str(std_x(end))])


hold on
plot(t,mean_x,'r-x')
plot(t,std_x,'g-x')
grid
title('M{\aa}linger og utvikling av middelverdi og standardavvik')
xlabel('tid [s]')
legend('M{\aa}linger $\{x_k\}$',...
    'Middelverdi $\{\bar{x}_k\}$',...
    'Standardavvik $\{\sigma_k\}$')

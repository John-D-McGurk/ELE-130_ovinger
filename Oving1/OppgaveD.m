%--------------------------------------------------
% d) Nyttige kommandoer
% 
%  sqrt, .^ (elementvise operasjoner), for-løkke 
%--------------------------------------------------
clear; close all;clc

% Leser inn målinger.
measurements = readtable('inclination.xls');
t = measurements{:,1};
x = measurements{:,2};

% Justerer datasett
t = [0; t];
x = [x(1); x];

figure
plot(t,x,'b-x')
grid on
xlabel('tid [s]')
ylabel('Vinkel [$^{\circ}$]')


M = size(x);  % antall elementer

% Beregn middelverdi og deretter standardavvik rekursivt
x_sum = zeros(size(x));
mean_x = zeros(size(x));
std_x = zeros(size(x));

for k = 1:M
    if k > 1
        x_sum(k) = x_sum(k-1) + x(k);
    else
        x_sum(k) = x(k)
    end

   mean_x(k) = x_sum(k) / k;

   std_x(k) = sqrt((x_sum(k) - mean_x(end))^2 / k + 1)
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
    'Standardavvik $\{\sigma_k\}$', ...
    'Location','southwest')

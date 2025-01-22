%--------------------------------------------------- 
% i) Nyttige kommandoer  
%  
% area, sin
%--------------------------------------------------- 

clear; close all; clc

U = 4;
w = 7;
C = 0.4;

%------------------------------------
% Figur 1 med 3x1 subplot
%------------------------------------
figure(1)
set(gcf,'position',[1000 500 450 600])

% Juster på denne
ant_runder = 1;

for i = 1:ant_runder
    t = 0:0.01:5;
    u = ..
    y = ..

    subplot(3,1,1)
    plot(t,u,'Linewidth',2)
    hold on
    grid
    title('$u(t) = ..$')

    subplot(3,1,2)
    area(t,u)
    grid
    hold on
    title('Fargelagt areal under $u(t)$')

    subplot(3,1,3)
    plot(t,y,'LineWidth',2)
    grid
    hold on
    title(['$y(t) = ... $',...
        '$ ... $'])
    
    % justering av C og/eller vinkelfrekvens w
    C = C - 0.4;
    %w = w - 2;
end



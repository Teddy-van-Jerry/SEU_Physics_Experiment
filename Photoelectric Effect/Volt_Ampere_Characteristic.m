%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File: Volt_Ampere_Characteristic.m
% Project: Photoelectric Effect
% -----------------------------------------------
% @author: Teddy van Jerry
% @licence: MIT Licence
%
% @version: 1.0 2021/06/07
% - initial version
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

V_ = readtable('Data.xlsx', 'Sheet', 2, 'Range', 'B5 : B56', 'ReadVariableNames', false);
A_ = readtable('Data.xlsx', 'Sheet', 2, 'Range', 'C5 : I56', 'ReadVariableNames', false);

% convert table to array
V = table2array(V_);

A1 = table2array(A_(:, 1));
A2 = table2array(A_(:, 2));
A3 = table2array(A_(:, 3));
A4 = table2array(A_(:, 4));
A5 = table2array(A_(:, 5));
A6 = table2array(A_(:, 6));
A7 = table2array(A_(:, 7));

%%%%%%%%%% Experiment 2 %%%%%%%%%%
fig1 = figure('Name', 'Experiment 2');
set(fig1, 'Position', [100 100 900 600]);

h11 = plot(Volt_Ampere_Characteristic_Plot(V, A1), V, A1, 'xb');
hold on;
h12 = plot(Volt_Ampere_Characteristic_Plot(V, A2), V, A2, '+b');
hold on;
h13 = plot(Volt_Ampere_Characteristic_Plot(V, A3), V, A3, '*b');
hold off;

legend( [h11(1), h12(1), h13(1)], '$\Phi=2mm$', '$\Phi=4mm$', '$\Phi=8mm$', ...
    'Location', 'SouthOutside', 'Interpreter', 'latex', 'Orientation', 'horizon' );
title('Volt-Ampere Characteristic When $\lambda=436nm, d=40cm$', 'Interpreter', 'latex');
xlabel('$U\ (V)$', 'Interpreter', 'latex');
ylabel('$I\ (10^{-11}A)$', 'Interpreter', 'latex');
set(gca,'XMinorGrid', 'on', 'YMinorGrid', 'on', ...
    'XAxisLocation', 'origin', 'YAxisLocation', 'origin', ...
    'XLim', [-5, 55], 'YLim', [-50, 1000]);

saveas(fig1, 'Experiment 2.pdf');

%%%%%%%%%% Experiment 3 %%%%%%%%%%
fig1 = figure('Name', 'Experiment 3');
set(fig1, 'Position', [100 100 900 600]);

h21 = plot(Volt_Ampere_Characteristic_Plot(V, A4), V, A4, 'xb');
hold on;
h22 = plot(Volt_Ampere_Characteristic_Plot(V, A2), V, A2, '+b');
hold on;
h23 = plot(Volt_Ampere_Characteristic_Plot(V, A5), V, A5, '*b');
hold off;

legend( [h21(1), h22(1), h23(1)], '$\lambda=365nm$', '$\lambda=436nm$', '$\lambda=577nm$', ...
    'Location', 'SouthOutside', 'Interpreter', 'latex', 'Orientation', 'horizon' );
title('Volt-Ampere Characteristic When $\Phi=4mm, d=40cm$', 'Interpreter', 'latex');
xlabel('$U\ (V)$', 'Interpreter', 'latex');
ylabel('$I\ (10^{-11}A)$', 'Interpreter', 'latex');
set(gca,'XMinorGrid', 'on' ,'YMinorGrid', 'on', ...
    'XAxisLocation', 'origin', 'YAxisLocation', 'origin', ...
    'XLim', [-5, 55], 'YLim', [-20, 250]);

saveas(fig1, 'Experiment 3.pdf');

%%%%%%%%%% Experiment 4 %%%%%%%%%%
fig1 = figure('Name', 'Experiment 4');
set(fig1, 'Position', [100 100 900 600]);

h31 = plot(Volt_Ampere_Characteristic_Plot(V, A7), V, A7, 'xb');
hold on;
h32 = plot(Volt_Ampere_Characteristic_Plot(V, A6), V, A6, '+b');
hold on;
h33 = plot(Volt_Ampere_Characteristic_Plot(V, A1), V, A1, '*b');
hold off;

legend( [h31(1), h32(1), h33(1)], '$d=32cm$', '$d=36cm$', '$d=40cm$', ...
    'Location', 'SouthOutside', 'Interpreter', 'latex', 'Orientation', 'horizon' );
title('Volt-Ampere Characteristic When $\Phi=2mm, \lambda=436nm$', 'Interpreter', 'latex');
xlabel('$U\ (V)$', 'Interpreter', 'latex');
ylabel('$I\ (10^{-11}A)$', 'Interpreter', 'latex');
set(gca,'XMinorGrid', 'on', 'YMinorGrid', 'on', ...
    'XAxisLocation', 'origin', 'YAxisLocation', 'origin', ...
    'XLim', [-5, 55], 'YLim', [-10, 120]);

saveas(fig1, 'Experiment 4.pdf');

% ALL RIGHTS RESERVED (C) 2021 Teddy van Jerry
%% Data
data = [
    0.35, 0.56, 0.81, 0.50; % -19
    0.37, 0.61, 0.90, 0.54; % -18
    0.39, 0.66, 1.00, 0.59; % -17
    0.42, 0.73, 1.11, 0.64; % -16
    0.44, 0.81, 1.23, 0.70; % -15
    0.48, 0.90, 1.35, 0.78; % -14
    0.52, 1.01, 1.46, 0.87; % -13
    0.57, 1.14, 1.55, 0.97; % -12
    0.63, 1.27, 1.61, 1.09; % -11
    0.70, 1.41, 1.63, 1.23; % -10
    0.77, 1.56, 1.62, 1.38; % - 9
    0.86, 1.70, 1.58, 1.55; % - 8
    0.97, 1.83, 1.51, 1.74; % - 7
    1.07, 1.93, 1.43, 1.93; % - 6
    1.18, 2.02, 1.35, 2.10; % - 5
    1.29, 2.07, 1.28, 2.27; % - 4
    1.39, 2.09, 1.21, 2.41; % - 3
    1.47, 2.11, 1.17, 2.51; % - 2
    1.52, 2.11, 1.14, 2.58; % - 1
    1.53, 2.11, 1.14, 2.59; %   0
    1.50, 2.11, 1.15, 2.56; %   1
    1.43, 2.10, 1.18, 2.48; %   2
    1.34, 2.08, 1.24, 2.36; %   3
    1.29, 2.07, 1.28, 2.27; %   4
    1.18, 2.02, 1.35, 2.10; %   5
    1.01, 1.89, 1.46, 1.85; %   6
    0.91, 1.77, 1.54, 1.74; %   7
    0.81, 1.63, 1.60, 1.47; %   8
    0.73, 1.49, 1.63, 1.31; %   9
    0.66, 1.34, 1.62, 1.16; %  10
    0.60, 1.20, 1.59, 1.03; %  11
    0.54, 1.07, 1.51, 0.92; %  12
    0.50, 0.96, 1.41, 0.82; %  13
    0.46, 0.86, 1.30, 0.74; %  14
    0.42, 0.77, 1.18, 0.67; %  15
    0.40, 0.70, 1.06, 0.61; %  16
    0.37, 0.63, 0.96, 0.56; %  17
    0.36, 0.58, 0.86, 0.52; %  18
    0.34, 0.53, 0.77, 0.48; %  19
];

x = -19 : 19;

%% Plot 'One'
figure('Name', 'One');
% Fit the curve:
% The value of 'SmoothingParam' can be adjusted.
f = fit(x.', data(:,1), 'smoothingspline', 'SmoothingParam', 0.5);
% Plot fit and change its properities:
fit_plot = plot(f);
fit_plot.LineWidth = 1.5;
hold on;
% Plot data points:
plot(x.', data(:,1), '+', 'LineWidth', 1, 'MarkerSize', 10, 'Color', 'blue');
grid on;
set(gcf, 'position', [100, 100, 500, 300]);
legend('Fitted Result', 'Data Point', 'Location', 'South')
xlabel('Distance $x$ [cm]', 'Interpreter', 'LaTeX');
ylabel('Hall Voltage $U_H$ [mV]', 'Interpreter', 'LaTeX');
hold off;
% Save plot:
saveas(gcf, 'One.fig');
saveas(gcf, 'One.eps', 'epsc');

%% Plot 'Two'
figure('Name', 'Two');
% Fit the curve:
% The value of 'SmoothingParam' can be adjusted.
f1 = fit(x.', data(:,2), 'smoothingspline', 'SmoothingParam', 0.5);
f2 = fit(x.', data(:,3), 'smoothingspline', 'SmoothingParam', 0.5);
f3 = fit(x.', data(:,4), 'smoothingspline', 'SmoothingParam', 0.5);
% Plot fit and change its properities:
fit_plot1 = plot(f1);
fit_plot1.LineWidth = 1.5;
fit_plot1.Color = '#0072BD';
hold on
fit_plot2 = plot(f2);
fit_plot2.LineWidth = 1.5;
fit_plot2.Color = '#D95319';
fit_plot3 = plot(f3);
fit_plot3.LineWidth = 1.5;
fit_plot3.Color = '#77AC30';
% Plot data points:
plot(x.', data(:,2), 'o', 'LineWidth', 1, 'MarkerSize', 5, 'Color', '#0072BD');
plot(x.', data(:,3), '^', 'LineWidth', 1, 'MarkerSize', 5, 'Color', '#D95319');
plot(x.', data(:,4), 'square', 'LineWidth', 1, 'MarkerSize', 5, 'Color', '#77AC30');
grid on;
% Add fake plot only for legend
plot(nan, nan, '-o', 'LineWidth', 1, 'MarkerSize', 5, 'Color', '#0072BD');
plot(nan, nan, '-^', 'LineWidth', 1, 'MarkerSize', 5, 'Color', '#D95319');
plot(nan, nan, '-square', 'LineWidth', 1, 'MarkerSize', 5, 'Color', '#77AC30');

legend('', '', '', '', '', '', ... % skip items
    '$a=R$', '$a=2R$', '$a=R/2$', ...
    'Location', 'South', 'Interpreter', 'LaTeX');
set(gcf, 'position', [600, 100, 500, 300]);
xlabel('Distance $x$ [cm]', 'Interpreter', 'LaTeX');
ylabel('Hall Voltage $U_H$ [mV]', 'Interpreter', 'LaTeX');
hold off;
% Save plot:
saveas(gcf, 'Two.fig');
saveas(gcf, 'Two.eps', 'epsc');

% ALL RIGHTS RESERVED (C) 2021 Teddy van Jerry

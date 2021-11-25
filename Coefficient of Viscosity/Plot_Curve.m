%% Data
eta = [0.4481; 0.3180; 0.2292; 0.164; 0.121];

x = 30 : 5 : 50;

%% Plot
figure('Name', 'Coefficient of Viscosity');
% Fit the curve:
% The value of 'SmoothingParam' can be adjusted.
f = fit(x.', eta, 'smoothingspline', 'SmoothingParam', 0.5);
% Plot fit and change its properities:
fit_plot = plot(f);
fit_plot.LineWidth = 1.5;
hold on;
% Plot data points:
plot(x.', eta, '+', 'LineWidth', 1, 'MarkerSize', 10, 'Color', 'blue');
grid on;
set(gcf, 'position', [100, 100, 500, 400]);
set(gca, 'XTick', 30:5:50);
legend('Fitted Result', 'Data Point', 'Location', 'Southwest')
xlabel('Temperature $T$ [$^{\circ}C$]', 'Interpreter', 'LaTeX');
ylabel('Coefficient of Viscosity $\eta$ [$\mathrm{Pa\cdot s}$]', 'Interpreter', 'LaTeX');
hold off;
% Save plot:
saveas(gcf, 'Plot.fig');
saveas(gcf, 'Plot.eps', 'epsc');

% ALL RIGHTS RESERVED (C) 2021 Teddy van Jerry

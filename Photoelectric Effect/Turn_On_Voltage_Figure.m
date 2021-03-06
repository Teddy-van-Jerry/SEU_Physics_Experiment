%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File: Turn_On_Voltage_Figure.m
% Project: Photoelectric Effect
% -----------------------------------------------
% @author: Teddy van Jerry
% @licence: MIT Licence
%
% @version: 1.0 2021/06/06
% - initial version
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [fitresult, gof] = Turn_On_Voltage_Figure(x, U)
%CREATEFIT(X,U)
%  Create a fit.
%
%  Data for 'Turn On Voltage' fit:
%      X Input : x
%      Y Output: U
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 06-Jun-2021 14:05:26


%% Fit: 'Turn On Voltage'.
[xData, yData] = prepareCurveData( x, U );

% Set up fittype and options.
ft = fittype( 'poly1' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
figure( 'Name', 'Turn On Voltage' );
h = plot( fitresult, xData, yData );
title('Turn On Voltage');
legend( h, 'Data Point', 'Turn On Voltage', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( '$\nu\ (10^{14}Hz)$', 'Interpreter', 'latex' );
ylabel( '$U\ (V)$', 'Interpreter', 'latex' );

grid on
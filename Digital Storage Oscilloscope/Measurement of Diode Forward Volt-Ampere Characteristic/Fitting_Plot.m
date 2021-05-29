%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File: Fitting_Plot.m
% Project: Measurement of diode forward
%          volt-ampere characteristic
% -----------------------------------------------
% @author: Teddy van Jerry
% @licence: MIT Licence
%
% @version: 1.0 2021/05/29
% - change the display style
% - edit axes and title information
% - initial version
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [fitresult, gof] = Fitting_Plot(U, I)
%CREATEFIT(U,I)
%  Create a fit.
%
%  Data for 'Fitting Result' fit:
%      X Input : U
%      Y Output: I
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 29-May-2021 16:56:04
%  == Later edited ==

%% Fit: 'Fitting Result'.
[xData, yData] = prepareCurveData( U, I );

% Set up fittype and options.
ft = fittype( 'poly4' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
figure( 'Name', 'Diode Forward Volt-Ampere Characteristic' );
h = plot( fitresult, xData, yData, 'x' );
legend( h, 'I(mA) vs. U(V)', 'Fitting Result', 'Location', 'SouthEast', 'Interpreter', 'none' );

% Title
title( 'Diode Forward Volt-Ampere Characteristic' )
% Label axes
xlabel( 'U(V)',  'Interpreter', 'none' );
ylabel( 'I(mA)', 'Interpreter', 'none' );
grid on



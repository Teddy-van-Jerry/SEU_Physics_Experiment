%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File: Volt_Ampere_Characteristic_Plot.m
% Project: Photoelectric Effect
% -----------------------------------------------
% @author: Teddy van Jerry
% @licence: MIT Licence
%
% @version: 1.0 2021/06/07
% - initial version
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [fitresult] = Volt_Ampere_Characteristic_Plot(V, A)
%Volt_Ampere_Characteristic_Plot(V,A1)
%  Create a fit.
%
%  Data for 'A' fit:
%      X Input : V
%      Y Output: A
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%% Fit: 
[xData, yData] = prepareCurveData( V, A );

% Set up fittype and options.
ft = fittype( 'smoothingspline' );
opts = fitoptions( 'Method', 'SmoothingSpline' );
opts.SmoothingParam = 0.3;

% Fit model to data.
fitresult = fit( xData, yData, ft, opts );

grid on

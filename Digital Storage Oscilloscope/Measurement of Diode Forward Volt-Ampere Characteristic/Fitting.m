%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File: Fitting.m
% Project: Measurement of diode forward
%          volt-ampere characteristic
% -----------------------------------------------
% @author: Teddy van Jerry
% @licence: MIT Licence
%
% @version: 1.0 2021/05/29
% - initial version
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

U = [0, 0.20, 0.40, 0.60, 0.80, 0.92, 1.00, 1.12, 1.20, 1.40, 1.60, 1.80, 1.88];
I = [0, 0.12, 0.32, 0.48, 0.48, 0.50, 0.50, 0.48, 0.50, 0.50, 0.54, 0.48, 0.50];

% == Lines below used to create a raw figure == %
% i = linspace( 0, 1.9, 100 );
% y = polyval( p, i );
% p = polyfit( U, I, 4 );
% plot( U, I, 'o', i, y, 'k:' )
% ============================================= %

% ===== Used to create the fitting figure ===== %
% cftool( "Fitting.sfit" )
% ============================================= %

% === Call the plot function auto generated === %
Fitting_Plot( U, I );
% ============================================= %

% ALL RIGHTS RESERVED (C) 2021 Teddy van Jerry
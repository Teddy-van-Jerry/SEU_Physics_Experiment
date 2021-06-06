%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File: Turn_On_Voltage.m
% Project: Photoelectric Effect
% -----------------------------------------------
% @author: Teddy van Jerry
% @licence: MIT Licence
%
% @version: 1.0 2021/06/06
% - initial version
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x_ = readtable('Data.xlsx', 'Sheet', 1, 'Range', 'C4 : G4', 'ReadVariableNames', false);
U_ = readtable('Data.xlsx', 'Sheet', 1, 'Range', 'C9 : G9', 'ReadVariableNames', false);

x = table2array(x_);
U = table2array(U_);

Turn_On_Voltage_Figure(x, U);

% ALL RIGHTS RESERVED (C) 2021 Teddy van Jerry
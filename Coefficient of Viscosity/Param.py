# Title: Calculation of Coefficient of Viscosity
# Author: Teddy van Jerry
# Date: Nov 24, 2021
# Repo: https://github.com/Teddy-van-Jerry/SEU_Physics_Experiment
################################################################################ 
# MIT License
#
# Copyright (c) 2021 Teddy van Jerry
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
################################################################################ 

import math

############## PARAMETERS ##############
l = 0.2 # distance [m]
rho = 7.8E3 # density of iron [kg/m^3]
rho0 = 0.95E3 # density of oil [kg/m^3]
g = 9.81 # [N/m]
d = 1.037E-3 # ball diameter [m] 1.165E-3
D = 2.0E-2 # tube inner diameter [m]
########################################

################# DATA #################
# 35: 20.22, 20.34, 20.03, 20.06, 20.16
# 40: 14.56, 14.36, 14.31, 14.18, 14.12
########################################

times = [25.81, 25.07, 25.22, 25.10, 25.09] # time for 20cm in test
num = len(times) # number of test data
t = sum(times) / num # average number
std_dif = 0
for i in range(num):
    std_dif += (times[i] - t) ** 2
std_dif = math.sqrt(std_dif / (num - 1))
print(f'Average: {t:.4f} s\nStd Dif: {std_dif:.4f}')

v = l / t
print(f'Speed: {v:.6f} m/s')

eta = (rho - rho0) * g * d * d \
    / (18 * v * (1 + 2.4 * d / D))
print(f'Calculated Eta: {eta:.4f}')

Re = v * d * rho0 / eta
print(f'Re: {Re:.5f}')
if Re > 0.1:
    eta = eta / (1 + 3 / 16 * Re)

print(f'Amended Eta: {eta:.4f}')


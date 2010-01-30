%% State space example for Lectures 13 and 14
% define some values for capacitancem inductance and resitance
Cap = 1; L = 1; R = 1;
%% Define state space model and label states inputs and outputs
A = [0 -1/Cap; 1/L -R/L];
B = [1/Cap; 0];
C = [1 0; 0 1; 1 -R; 0 R; 0 -1];
D = [0; 0; 0; 0; 1];
circ_ss = ss(A, B, C, D, ...
'statename',{'v31' 'i1'}, 'inputname', 'u', 'outputname', {'v31' 'i1' 'v32' 'v21' 'i2'});
%% Show model
circ_ss
%% Plot a step response
step(circ_ss)
%% Convert to transfer function matrix
circ_tf=tf(circ_ss)

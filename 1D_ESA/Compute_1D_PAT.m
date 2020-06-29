%% Function to Compute 1D PAT
% Arik D. Brown
 
function [PAT, PAT_mag, PAT_dB, PAT_dBnorm] = Compute_1D_PAT(EP,AF)
PAT = EP .*AF;
[PAT_mag, PAT_dB, PAT_dBnorm] = process_vector(PAT);
end
%%
% 方向图乘法 PAT = EP .*AF
% 输入阵元方向图、阵因子，输出阵列方向图及参数
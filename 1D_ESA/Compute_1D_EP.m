%% Function to Compute 1D EP
% Arik D. Brown
 
function [EP, EP_mag, EP_dB, EP_dBnorm] = Compute_1D_EP(theta_deg,EF)
EP = (cosd(theta_deg).^(EF/2));%Volts
[EP_mag, EP_dB, EP_dBnorm] = process_vector(EP);
end
%%
% 阵元因子 EF(element factor)
% 阵元方向图 EP(element pattern)
% EP=(cosd(theta_deg).^(EF/2))
% 输入角度范围和阵元因子，输出该角度范围内的阵元方向图及参数
%% Function to Compute 1D PAT
% Arik D. Brown
 
function [PAT, PAT_mag, PAT_dB, PAT_dBnorm] = Compute_1D_PAT(EP,AF)
PAT = EP .*AF;
[PAT_mag, PAT_dB, PAT_dBnorm] = process_vector(PAT);
end
%%
% ����ͼ�˷� PAT = EP .*AF
% ������Ԫ����ͼ�������ӣ�������з���ͼ������
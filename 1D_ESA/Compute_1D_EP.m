%% Function to Compute 1D EP
% Arik D. Brown
 
function [EP, EP_mag, EP_dB, EP_dBnorm] = Compute_1D_EP(theta_deg,EF)
EP = (cosd(theta_deg).^(EF/2));%Volts
[EP_mag, EP_dB, EP_dBnorm] = process_vector(EP);
end
%%
% ��Ԫ���� EF(element factor)
% ��Ԫ����ͼ EP(element pattern)
% EP=(cosd(theta_deg).^(EF/2))
% ����Ƕȷ�Χ����Ԫ���ӣ�����ýǶȷ�Χ�ڵ���Ԫ����ͼ������
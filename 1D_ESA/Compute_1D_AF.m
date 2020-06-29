%% Function to Compute 1D AF
% Arik D. Brown
 
function [AF, AF_mag, AF_dB, AF_dBnorm] = Compute_1D_AF(wgts, nelems, d_in, f_GHz, fo_GHz, u, uo)
 
lambda=11.803/f_GHz;%wavelength(in)
lambdao=11.803/fo_GHz;%wavelength at tune freq(in)
 
k=2*pi/lambda;%rad/in
ko=2*pi/lambdao;%rad/in
 
AF=zeros(1,length(u));
 
for ii=1:nelems
    AF = AF+wgts(ii)*exp(1j*(ii-(nelems+1)/2)*d_in*(k*u-ko*uo));
end
[AF_mag, AF_dB, AF_dBnorm] = process_vector(AF);
end
%%
% wgts是A_m即单元辐射的幅值
% nelems表示单元数量
% 长度单位是英寸in（d_in）
% f_GHz、fo_GH是针对有源相扫阵列而言，对RA、TA而言可以都取f_GHz，k、ko可以合并提出
% u是扫描的空间角度（绘图用）
% uo是波束指向的角度
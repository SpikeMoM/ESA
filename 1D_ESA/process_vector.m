function[vectormag, vectordB, vectordBnorm] = process_vector(vector)
vectormag = abs(vector);
vectordB = 20*log10(vectormag+eps);
vectordBnorm = 20*log10((vectormag+eps)/max(vectormag));
end
%%
% annotation
% eps = 2.2204e-16 ( eps 返回从 1.0 到下一个较大双精度数的距离，即 2^-52)
% mag：复数（幅度+相位）取绝对值
% dB：mag取对数
% dBnorm：对dB归一化
function[vectormag, vectordB, vectordBnorm] = process_vector(vector)
vectormag = abs(vector);
vectordB = 20*log10(vectormag+eps);
vectordBnorm = 20*log10((vectormag+eps)/max(vectormag));
end
%%
% annotation
% eps = 2.2204e-16 ( eps ���ش� 1.0 ����һ���ϴ�˫�������ľ��룬�� 2^-52)
% mag������������+��λ��ȡ����ֵ
% dB��magȡ����
% dBnorm����dB��һ��
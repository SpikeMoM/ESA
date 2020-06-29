%% Code to Generate chebyshev 1 Weights
% WuWenjie

function [wgt] = Chebyshev(nelem, sll, method)

r0 = 10^(abs(sll)/20);
x0 = (r0 +(r0 *r0 -1)^0.5)^(1 /(nelem -1))/2 +(r0 -(r0 *r0 -1)^0.5)^(1 /(nelem -1))/2;
k = mod(nelem, 2);
wgt = zeros(1, nelem);
M = floor(nelem/2);

%����һ������ϵ�����ⷽ����
if method == 1
    k1 = 1 -k;%ż�������б�ѩ�����ʽ�±�Ϊ���������������б�ѩ�����ʽ�±�Ϊż��
    M1 = ceil(nelem/2);
    A = zeros(nelem, M1);
	A1 = zeros(nelem, M1);
    syms x;
    d = sym2poly(chebyshevT(nelem -1, x)); 
    d = d';
    d = d(any(d,2), :);
    for i = k1:2:nelem
        A( nelem-i:nelem, ceil((i+1)/2) ) = sym2poly(chebyshevT(i, x)); 
    end
    for i = 1:nelem
        A1(i, :) = A(i, :) /(x0^(nelem-i));
    end
    B = A1(any(A1,2), :);
    w = B\d;
    if k == 0
        for i = 1:M
            wgt(i +M) = w(i);
            wgt(M +1 -i) = w(i);
        end
        wgt = wgt /w(1);
    end
    if k == 1
        for i = 1:M+1
            wgt(i +M) = w(i);
            wgt(M +2 -i) = w(i);
        end
        wgt(1 +M) = 2*w(1);
        wgt = wgt /w(1) /2;
    end

%�����������ðͱ�����ʽֱ�Ӽ��㼤��
elseif method == 2
    if k == 0
        w = zeros(1, M);
        for i = 1:M
            for j = i:M
                w(i) = w(i) + (-1)^(M-j)*( x0^(2*j-1) *factorial(j+M-2) *(2*M-1) /factorial(j-i) /factorial(j+i-1) /factorial(M-j) ); 
            end
            wgt(i +M) = w(i);
            wgt(M +1 -i) = w(i);
        end
        wgt = wgt /w(1);
    end
    if k == 1
        w = zeros(1, M+1);
        for i = 1:M+1
            for j = i:M+1
                w(i) = w(i) + (-1)^(M-j+1)*( x0^(2*j-2) *factorial(j+M-2) *(2*M) /factorial(j-i) /factorial(j+i-2) /factorial(M-j+1) ); 
            end
            wgt(i +M) = w(i);
            wgt(M +2 -i) = w(i);
        end
        wgt = wgt /w(1);
    end
end
wgt = wgt';
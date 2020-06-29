if method == 1
    k1 = 1 -k;%偶数阵列切比雪夫多项式下标为奇数，奇数阵列切比雪夫多项式下标为偶数
    M = ceil(nelem/2);
    A = zeros(nelem, M);
	A1 = zeros(nelem, M);
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
            wgt(i +M) = w(i) /w(1);
            wgt(M +1 -i) = w(i) /w(1);
        end
    end
    if k == 1
        for i = 1:M+1
            wgt(i +M) = w(i) /w(1);
            wgt(M +2 -i) = w(i) /w(1);
        end
    end
    
elseif method == 2
    
end
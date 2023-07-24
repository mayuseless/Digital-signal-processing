function f = DFT(X,Y,N)
    %计算
    start = X(1);
    long = length(X);
    ending = X(long);
    if N >= long
        %延拓Y
        tmp = zeros(N,1);
        for i = 1:long
            tmp(i) = Y(i);
        end
        Y = tmp;
        %计算X(k)
        f = zeros(N,1);
        for k = 1:N
            for n = 1:N
                f(k) = f(k) + Y(n) * exp( -1i * 2 * pi / N * (k-1) * (n-1));
            end
        end
        
        stem(abs(f),'fill')
            
    else
        fprintf('抱歉序列长度比N大，这并不符合离散傅里叶变换\n')
    end


end


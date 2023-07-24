function f = DFT(X,Y,N)
    %����
    start = X(1);
    long = length(X);
    ending = X(long);
    if N >= long
        %����Y
        tmp = zeros(N,1);
        for i = 1:long
            tmp(i) = Y(i);
        end
        Y = tmp;
        %����X(k)
        f = zeros(N,1);
        for k = 1:N
            for n = 1:N
                f(k) = f(k) + Y(n) * exp( -1i * 2 * pi / N * (k-1) * (n-1));
            end
        end
        
        stem(abs(f),'fill')
            
    else
        fprintf('��Ǹ���г��ȱ�N���Ⲣ��������ɢ����Ҷ�任\n')
    end


end


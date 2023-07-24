function f = ZT(X,Y)
    %计算
    start = X(1);
    long = length(X);
    ending = X(long);
    f = 0; 

    %符号计算
    syms z
    for k = start:ending
        f = Y(k - start + 1) * power(z,-k) + f;
    end
    
    %收敛域
    omega = (-2 * pi):0.1:(2 * pi);
    z = exp(-1i * omega);
    y = subs(f);
    
    Max = max(abs(y));
    Min  = min(abs(y));
    fprintf('收敛域为:%d < |z| < %d\n',Min,Max);

end


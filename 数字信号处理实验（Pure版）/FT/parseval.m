function [sumn,sn] = parseval(X,Y)
    %计算Y的FT
    start = X(1);
    long = length(X);
    ending = X(long);
    f = 0; 
    
    %符号计算
    syms w
    for k = start:ending
        f = Y(k - start + 1) * exp(-1i * w * k) + f;
    end
    %数值计算
    FTY = f;
    
    %计算|x(n)|^2求和
    sumn = 0;
    for k = 1:long
        sumn = sumn + abs(Y(k)) * abs(Y(k));
    end
    
    %计算|FTY|^2 的积分
    sn = int(abs(FTY)*abs(FTY),-pi,pi)/(2*pi);
    
    fprintf('\n前半段的值:')
    fprintf('%d\n',sumn)
    fprintf('后半段的值:')
    fprintf('%d\n',sn)
    if sumn == sn
        fprintf('这说明符合怕死娃儿定理!')
    end
    
    
    
end
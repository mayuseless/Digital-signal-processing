function f = time_shift(X,Y,omega,n)
    %计算
    start = X(1);
    long = length(X);
    ending = X(long);
    f = 0; 
    
    temps = start + n;
    tempe = ending + n;
    %符号计算
    syms w
    for k = temps:tempe
        f = Y(k - temps + 1) * exp(-1i * w * k) + f;
    end
    %数值计算
%     w = omega;
%     y = subs(f);
    
%     %画图
%     %原来图像
%     FT(X,Y,omega);
%     %俩图
%     
%     %新的图像
%     %幅频图像
%     subplot(2,2,3)
%     plot(omega,abs(y))
%     xlabel('\omega')
%     ylabel('|X(e^{j\omega})|')
%     %相频图像
%     subplot(2,2,4)
%     plot(omega,angle(y))
%     xlabel('\omega')
%     ylabel('arg(X(e^{j\omega}))')

end


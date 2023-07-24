function f = FT(X,Y,omega)
    %����
    start = X(1);
    long = length(X);
    ending = X(long);
    f = 0; 
    
    %���ż���
    syms w
    for k = start:ending
        f = Y(k - start + 1) * exp(-1i * w * k) + f;
    end
    %��ֵ����
    w = omega;
    y = subs(f);
    
    
    %��ͼ
    %��Ƶͼ��
    subplot(2,2,1)
    plot(omega,abs(y))
    xlabel('\omega')
    ylabel('|X(e^{j\omega})|')
    %��Ƶͼ��
    subplot(2,2,2)
    plot(omega,angle(y))
    xlabel('\omega')
    ylabel('arg(X(e^{j\omega}))')
end
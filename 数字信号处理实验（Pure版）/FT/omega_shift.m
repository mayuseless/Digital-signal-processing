function f = omega_shift(X,Y,omega,omega0)
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
    w = omega - omega0;
    y = subs(f);
    
    %��ͼ
    %ԭ��ͼ��
    FT(X,Y,omega);
    
    %�µ�ͼ��
    %��Ƶͼ��
    subplot(2,2,3)
    plot(omega,abs(y))
    xlabel('\omega')
    ylabel('|X(e^{j\omega})|')
    %��Ƶͼ��
    subplot(2,2,4)
    plot(omega,angle(y))
    xlabel('\omega')
    ylabel('arg(X(e^{j\omega}))')
    
end


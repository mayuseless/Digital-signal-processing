function f = time_shift(X,Y,omega,n)
    %����
    start = X(1);
    long = length(X);
    ending = X(long);
    f = 0; 
    
    temps = start + n;
    tempe = ending + n;
    %���ż���
    syms w
    for k = temps:tempe
        f = Y(k - temps + 1) * exp(-1i * w * k) + f;
    end
    %��ֵ����
%     w = omega;
%     y = subs(f);
    
%     %��ͼ
%     %ԭ��ͼ��
%     FT(X,Y,omega);
%     %��ͼ
%     
%     %�µ�ͼ��
%     %��Ƶͼ��
%     subplot(2,2,3)
%     plot(omega,abs(y))
%     xlabel('\omega')
%     ylabel('|X(e^{j\omega})|')
%     %��Ƶͼ��
%     subplot(2,2,4)
%     plot(omega,angle(y))
%     xlabel('\omega')
%     ylabel('arg(X(e^{j\omega}))')

end


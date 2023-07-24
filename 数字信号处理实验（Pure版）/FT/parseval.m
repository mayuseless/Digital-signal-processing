function [sumn,sn] = parseval(X,Y)
    %����Y��FT
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
    FTY = f;
    
    %����|x(n)|^2���
    sumn = 0;
    for k = 1:long
        sumn = sumn + abs(Y(k)) * abs(Y(k));
    end
    
    %����|FTY|^2 �Ļ���
    sn = int(abs(FTY)*abs(FTY),-pi,pi)/(2*pi);
    
    fprintf('\nǰ��ε�ֵ:')
    fprintf('%d\n',sumn)
    fprintf('���ε�ֵ:')
    fprintf('%d\n',sn)
    if sumn == sn
        fprintf('��˵�����������޶�����!')
    end
    
    
    
end
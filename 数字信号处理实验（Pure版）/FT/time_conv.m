function [FTX,FTH,FTY] = time_conv(X1,Y1,H2,Y2,omega)
    addpath(genpath('..\basic_calculate_toolbox'))
    addpath(genpath('..\'))
    [Xm,Ym] = cross_multiple(X1,Y1,H2,Y2);
    refreshdata

    %����Y1��FT
    start = X1(1);
    long = length(X1);
    ending = X1(long);
    f = 0; 
    
    %���ż���
    syms w
    for k = start:ending
        f = Y1(k - start + 1) * exp(-1i * w * k) + f;
    end
    %��ֵ����
    w = omega;
    FTX = subs(f);

    %����Y2��FT
    start = H2(1);
    long = length(H2);
    ending = H2(long);
    f = 0; 
    
    %���ż���
    syms w
    for k = start:ending
        f = Y2(k - start + 1) * exp(-1i * w * k) + f;
    end
    %��ֵ����
    w = omega;
    FTH = subs(f);
    
    
    %����Ym��FT
    start = Xm(1);
    long = length(Xm);
    ending = Xm(long);
    f = 0; 
    
    %���ż���
    syms w
    for k = start:ending
        f = Ym(k - start + 1) * exp(-1i * w * k) + f;
    end
    %��ֵ����
    w = omega;
    FTY = subs(f);
    
    %��ͼ
    subplot(2,3,1)
    stem(X1,Y1,'fill')
    title('Y1')
    
    subplot(2,3,2)
    stem(H2,Y2,'fill')
    title('Y2')
    
    subplot(2,3,3)
    stem(Xm,Ym,'fill')
    title('Y1*Y2')
    
    subplot(2,3,4)
    plot(omega,abs(FTX))
    title('|FTX|')
    
    subplot(2,3,5)
    plot(omega,abs(FTH))
    title('|FTH|')
    
    subplot(2,3,6)
    plot(omega,abs(FTY))
    title('|FTX|*|FTH|')
end


function [Ye,Xe,We,Yo,Xo,Wo,FTe,FTo] = symmetry(X,Y,omega)
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
    FTY = subs(f);
    
    %��������
    %[reverX,reverY] = reverse(X,Y);
    
    %����
    reverY = zeros(long,1);
    reverX = (-ending):(-start);
    
    for i = reverX;
        reverY(i + ending + 1) = Y(-i - start + 1);
    end

    
    conjY = conj(reverY);
    
    %[Xe,Ye] = add(X,Y./2,reverX,conjY./2);
    %[Xo,Yo] = add(X,Y./2,reverX,-conjY./2);
    
    %����
    start1 = X(1);
    long1 = length(X);
    ending1 = X(long1);
    
    start2 = reverX(1);
    long2 = length(reverX);
    ending2 = reverX(long2);
    
    if start1 < start2
        start = start1;
    else
        start = start2;
    end
    if ending1 > ending2
        ending = ending1;
    else
        ending = ending2;
    end
    %�����µ����г���
    Xe = start:ending;
    long = length(Xe);
    Ye = zeros(long,1);
    %����Ye
    for i = Xe
        if i >= start1 && i <= ending1
            Ye(i - start + 1) = Ye(i - start + 1) + Y(i - start1 + 1)/2;
        end
        if i >= start2 && i <= ending2
            Ye(i - start + 1) = Ye(i - start + 1) + conjY(i - start2 + 1)/2;
        end
    end
    
    
    %�����µ����г���
    Xo = start:ending;
    long = length(Xe);
    Yo = zeros(long,1);
    %����Yo
    for i = Xo
        if i >= start1 && i <= ending1
            Yo(i - start + 1) = Yo(i - start + 1) + Y(i - start1 + 1)/2;
        end
        if i >= start2 && i <= ending2
            Yo(i - start + 1) = Yo(i - start + 1) - conjY(i - start2 + 1)/2;
        end
    end
    
    
    
    
    %����
    start_omega = omega(1);
    long_omega = length(omega);
    end_omega = omega(long_omega);
    delta = omega(2) - omega(1);
    reverFTY = zeros(long_omega,1);
    
    %����FT
    reverFTW = (-end_omega):delta:(-start_omega);
    for k = 1:long_omega
        reverFTY(k) = FTY(long_omega - k  + 1);
    end
    conjFTY = conj(reverFTY);
    
    %[We,FTe] = add(omega,FTY./2,reverFTW,conjFTY./2)
    %[Wo,FTo] = add(omega,FTY./2,reverFTW,-conjFTY./2)
    
    
    %����
    start1 = omega(1);
    long1 = length(omega);
    ending1 = omega(long1);
    
    start2 = reverFTW(1);
    long2 = length(reverFTW);
    ending2 = reverFTW(long2);
    
    if start1 < start2
        start = start1;
    else
        start = start2;
    end
    if ending1 > ending2
        ending = ending1;
    else
        ending = ending2;
    end
    %�����µ����г���We,Wo
    We = start:delta:ending;
    Wo = We;
    longFT = length(We);
    FTe = zeros(longFT,1);
    FTo = zeros(longFT,1);
    
    %����FTe
    for k = 1:longFT
        if (start + delta * (k - 1)) <= ending1 && start + (delta * (k - 1)) >= start1
            FTe(k) = FTe(k) + FTY(k) / 2;
        end
        if (start + delta * (k - 1)) <= ending2 && start + (delta * (k - 1)) >= start2
            FTe(k) = FTe(k) + conjFTY(k) / 2;
        end
    end
    
    %����FTo
    for k = 1:longFT
        if (start + delta * (k - 1)) <= ending1 && start + (delta * (k - 1)) >= start1
            FTo(k) = FTo(k) + FTY(k) / 2;
        end
        if (start + delta * (k - 1)) <= ending2 && start + (delta * (k - 1)) >= start2
            FTo(k) = FTo(k) - conjFTY(k) / 2;
        end
    end
    
%     %��ͼ
%     subplot(3,2,1)
%     stem(Xe,Ye,'fill')
%     title('Ye')
%     
%     subplot(3,2,2)
%     stem(Xo,Yo,'fill')
%     title('Yo')
%     
%     subplot(3,2,3)
%     plot(We,real(FTe))
%     title('FTe��ʵ��')
%     subplot(3,2,4)
%     plot(We,imag(FTe))
%     title('FTe���鲿')
%     
%     
%     subplot(3,2,5)
%     plot(Wo,real(FTo))
%     title('FTo��ʵ��')
%     subplot(3,2,6)
%     plot(Wo,imag(FTo))
%     title('FTo���鲿')
    
end
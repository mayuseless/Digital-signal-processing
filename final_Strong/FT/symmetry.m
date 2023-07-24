function [Ye,Xe,We,Yo,Xo,Wo,FTe,FTo] = symmetry(X,Y,omega)
    %计算
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
    w = omega;
    FTY = subs(f);
    
    %共轭序列
    %[reverX,reverY] = reverse(X,Y);
    
    %计算
    reverY = zeros(long,1);
    reverX = (-ending):(-start);
    
    for i = reverX;
        reverY(i + ending + 1) = Y(-i - start + 1);
    end

    
    conjY = conj(reverY);
    
    %[Xe,Ye] = add(X,Y./2,reverX,conjY./2);
    %[Xo,Yo] = add(X,Y./2,reverX,-conjY./2);
    
    %计算
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
    %创建新的序列长度
    Xe = start:ending;
    long = length(Xe);
    Ye = zeros(long,1);
    %计算Ye
    for i = Xe
        if i >= start1 && i <= ending1
            Ye(i - start + 1) = Ye(i - start + 1) + Y(i - start1 + 1)/2;
        end
        if i >= start2 && i <= ending2
            Ye(i - start + 1) = Ye(i - start + 1) + conjY(i - start2 + 1)/2;
        end
    end
    
    
    %创建新的序列长度
    Xo = start:ending;
    long = length(Xe);
    Yo = zeros(long,1);
    %计算Yo
    for i = Xo
        if i >= start1 && i <= ending1
            Yo(i - start + 1) = Yo(i - start + 1) + Y(i - start1 + 1)/2;
        end
        if i >= start2 && i <= ending2
            Yo(i - start + 1) = Yo(i - start + 1) - conjY(i - start2 + 1)/2;
        end
    end
    
    
    
    
    %计算
    start_omega = omega(1);
    long_omega = length(omega);
    end_omega = omega(long_omega);
    delta = omega(2) - omega(1);
    reverFTY = zeros(long_omega,1);
    
    %共轭FT
    reverFTW = (-end_omega):delta:(-start_omega);
    for k = 1:long_omega
        reverFTY(k) = FTY(long_omega - k  + 1);
    end
    conjFTY = conj(reverFTY);
    
    %[We,FTe] = add(omega,FTY./2,reverFTW,conjFTY./2)
    %[Wo,FTo] = add(omega,FTY./2,reverFTW,-conjFTY./2)
    
    
    %计算
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
    %创建新的序列长度We,Wo
    We = start:delta:ending;
    Wo = We;
    longFT = length(We);
    FTe = zeros(longFT,1);
    FTo = zeros(longFT,1);
    
    %创建FTe
    for k = 1:longFT
        if (start + delta * (k - 1)) <= ending1 && start + (delta * (k - 1)) >= start1
            FTe(k) = FTe(k) + FTY(k) / 2;
        end
        if (start + delta * (k - 1)) <= ending2 && start + (delta * (k - 1)) >= start2
            FTe(k) = FTe(k) + conjFTY(k) / 2;
        end
    end
    
    %创建FTo
    for k = 1:longFT
        if (start + delta * (k - 1)) <= ending1 && start + (delta * (k - 1)) >= start1
            FTo(k) = FTo(k) + FTY(k) / 2;
        end
        if (start + delta * (k - 1)) <= ending2 && start + (delta * (k - 1)) >= start2
            FTo(k) = FTo(k) - conjFTY(k) / 2;
        end
    end
    
%     %画图
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
%     title('FTe的实部')
%     subplot(3,2,4)
%     plot(We,imag(FTe))
%     title('FTe的虚部')
%     
%     
%     subplot(3,2,5)
%     plot(Wo,real(FTo))
%     title('FTo的实部')
%     subplot(3,2,6)
%     plot(Wo,imag(FTo))
%     title('FTo的虚部')
    
end
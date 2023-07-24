function [Zeros,Pole,Max] = Dot(X,Y)
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
   
    %零点计算
    Zeros = solve(f == 0);
    %极点计算
    fi = simplify(f);
    Pole = solve(1/fi == 0);
    
    %收敛域
    omega = (-2 * pi):0.1:(2 * pi);
    z = exp(-1i * omega);
    y = subs(f);
    
    Max = max(abs(y));
    Min  = min(abs(y));
    
    if Max > max(abs(Pole))
        if Max > 1
            fprintf('对应的系统有因果性和稳定性\n')
        else
            fprintf('对应的系统有因果性，但不具有稳定性\n')
        end
    elseif Max < max(abs(Pole)) && Max > 1
        fprintf('对应的系统有稳定性，无因果性\n')
    else
        fprintf('对应的系统无稳定性，无因果性\n')
    end
    
    
%     %画图
%     subplot(2,2,1)
%     plot(Zeros,'o')
%     title('零点分布图')
%     subplot(2,2,2)
%     plot(Pole,'o')
%     title('极点分布图')

end


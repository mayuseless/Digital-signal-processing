function f = IZT(ZT,N)
    %计算
    start = N(1);
    long = length(N);
    ending = N(long);
    f = zeros(long,1);
    
    for k = start:ending
        syms z
        %求出极点
        F_z = ZT * power(z,k - 1);
        fi = simplify(F_z);
        Pole = solve(1/fi == 0);
        
        %算出极点阶数
        longP = length(Pole);
        %含值向量
        value = unique(Pole);
        longV = length(value);
        %对应阶数向量
        temp = zeros(longV,1);
        for h = 1:longV
            for j = 1:longP
                if value(h) == Pole(j)
                    temp(h) = temp(h) + 1;
                end
            end
        end
        
        %进行计算
        for m = 1:longV
            %提取阶数
            n = temp(m);
            %提取极点值
            tmpV = value(m);
            %写出表达式
            res = 1 / factorial(n-1) * diff(F_z * power(z - tmpV,n),n-1);
            res = simplify(res);
            %进行计算
            z = tmpV;
            vl = subs(res);
            
            f(k - start + 1) = f(k - start + 1) +  vl;
        end
        
    end

end


function f = IZT(ZT,N)
    %����
    start = N(1);
    long = length(N);
    ending = N(long);
    f = zeros(long,1);
    
    for k = start:ending
        syms z
        %�������
        F_z = ZT * power(z,k - 1);
        fi = simplify(F_z);
        Pole = solve(1/fi == 0);
        
        %����������
        longP = length(Pole);
        %��ֵ����
        value = unique(Pole);
        longV = length(value);
        %��Ӧ��������
        temp = zeros(longV,1);
        for h = 1:longV
            for j = 1:longP
                if value(h) == Pole(j)
                    temp(h) = temp(h) + 1;
                end
            end
        end
        
        %���м���
        for m = 1:longV
            %��ȡ����
            n = temp(m);
            %��ȡ����ֵ
            tmpV = value(m);
            %д�����ʽ
            res = 1 / factorial(n-1) * diff(F_z * power(z - tmpV,n),n-1);
            res = simplify(res);
            %���м���
            z = tmpV;
            vl = subs(res);
            
            f(k - start + 1) = f(k - start + 1) +  vl;
        end
        
    end

end


function [Zeros,Pole,Max] = Dot(X,Y)
    %����
    start = X(1);
    long = length(X);
    ending = X(long);
    f = 0; 

    %���ż���
    syms z
    for k = start:ending
        f = Y(k - start + 1) * power(z,-k) + f;
    end
   
    %������
    Zeros = solve(f == 0);
    %�������
    fi = simplify(f);
    Pole = solve(1/fi == 0);
    
    %������
    omega = (-2 * pi):0.1:(2 * pi);
    z = exp(-1i * omega);
    y = subs(f);
    
    Max = max(abs(y));
    Min  = min(abs(y));
    
    if Max > max(abs(Pole))
        if Max > 1
            fprintf('��Ӧ��ϵͳ������Ժ��ȶ���\n')
        else
            fprintf('��Ӧ��ϵͳ������ԣ����������ȶ���\n')
        end
    elseif Max < max(abs(Pole)) && Max > 1
        fprintf('��Ӧ��ϵͳ���ȶ��ԣ��������\n')
    else
        fprintf('��Ӧ��ϵͳ���ȶ��ԣ��������\n')
    end
    
    
%     %��ͼ
%     subplot(2,2,1)
%     plot(Zeros,'o')
%     title('���ֲ�ͼ')
%     subplot(2,2,2)
%     plot(Pole,'o')
%     title('����ֲ�ͼ')

end


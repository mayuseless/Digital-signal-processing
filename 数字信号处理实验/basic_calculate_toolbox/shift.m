function [Xm,Ym] = shift(X,Y,m)
figure(2)
%ԭ��ͼ��
subplot(2,2,1)
stem(X,Y,'fill')
title('x(n)')
xlabel('n')
ylabel('x(n)')

%����
Xm = X + m;
Ym = Y;

%�µ�ͼ��
subplot(2,2,2)
stem(Xm,Ym,'fill')
title('x(n)')
xlabel('n')
ylabel('x(n-m)')
refreshdata
end


function [Xm,Ym] = n_xn(X,Y,m)
figure(2)
%ԭ��ͼ��
subplot(2,2,1)
stem(X,Y,'fill')
title('x(n)')
xlabel('n')
ylabel('x(n)')

%����
Xm = X;
Ym = m * Y;

%����ͼ��
subplot(2,2,2)
stem(Xm,Ym,'fill')
title('n*x(n)')
xlabel('n')
ylabel('x(n)')
end


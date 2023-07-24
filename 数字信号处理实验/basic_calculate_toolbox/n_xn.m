function [Xm,Ym] = n_xn(X,Y,m)
figure(2)
%原来图像
subplot(2,2,1)
stem(X,Y,'fill')
title('x(n)')
xlabel('n')
ylabel('x(n)')

%计算
Xm = X;
Ym = m * Y;

%现在图像
subplot(2,2,2)
stem(Xm,Ym,'fill')
title('n*x(n)')
xlabel('n')
ylabel('x(n)')
end


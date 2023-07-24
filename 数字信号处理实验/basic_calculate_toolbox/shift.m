function [Xm,Ym] = shift(X,Y,m)
figure(2)
%原来图像
subplot(2,2,1)
stem(X,Y,'fill')
title('x(n)')
xlabel('n')
ylabel('x(n)')

%计算
Xm = X + m;
Ym = Y;

%新的图像
subplot(2,2,2)
stem(Xm,Ym,'fill')
title('x(n)')
xlabel('n')
ylabel('x(n-m)')
refreshdata
end


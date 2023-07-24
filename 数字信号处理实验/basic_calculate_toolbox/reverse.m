function [Xm,Ym] = reverse(X,Y)
figure(2)
%ԭ��ͼ��
subplot(2,2,1)
stem(X,Y,'fill')
title('x(n)')
xlabel('n')
ylabel('x(n)')

%����
start = X(1);
long = length(X);
ending = X(long);
Ym = zeros(long,1);

Xm = (-ending):(-start);
for i = Xm;
    Ym(i + ending + 1) = Y(-i - start + 1);
end


%����ͼ��
subplot(2,2,2)
stem(Xm,Ym,'fill')
title('x(-n)')
xlabel('n')
ylabel('x(n)') 
end
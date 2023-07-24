%ѭ�����
function [Xm,Ym] = cyclic_convolution(x1,Y1,x2,Y2,N)
X1 = mod(x1,N);
X2 = mod(x2,N);
long1 = length(X1);
long2 = length(X2);

if N < max(long1,long2)
    error('Nȡֵ��С');    
end

Xm = 0 : N-1;
Ym = zeros(1,N);

%���
tempY1 = zeros(1,N);
for i = 1:long1
    tempY1(X1(i)+1) = Y1(i);
end
tempY2 = zeros(1,N);
for i = 1:long2
   tempY2(X2(i)+1) = Y2(i); 
end

tempY1,tempY2
C = zeros(N,N);
for i = 1:N
    C(i,:) = tempY1(cyclic_fun(i,N));
end
Ym = C*(tempY2');
C



%��ͼ
figure(2);
%ԭ��Y1ͼ��
subplot(2,2,1);
stem(X1,Y1,'fill');
title('x1(n)');
xlabel('n');
ylabel('x1(n)');

%ԭ��Y2ͼ��
subplot(2,2,2);
stem(X2,Y2,'fill');
title('x2(n)');
xlabel('n');
ylabel('x2(n)');

%���ͼ��
subplot(2,2,3);
stem(Xm,Ym,'fill');
title('x1(n) c* x2(n)');
xlabel('n');
ylabel('x(n)');
end
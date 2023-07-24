function [Xm,Ym] = cross_multiple(X1,Y1,X2,Y2)
start1 = X1(1);
long1 = length(X1);
ending1 = X1(long1);

start2 = X2(1);
long2 = length(X2);
ending2 = X2(long2);

if long1 < long2
    temp1 = long1;
    long1 = long2;
    long2 = temp1;
    
    temp2 = X1;
    X1 = X2;
    X2 = temp2;
    
    temp3 = Y1;
    Y1 = Y2;
    Y2 = temp3;
end

Xm = start1 + start2 : ending1 + ending2;
long = long1 + long2 - 1;
Ym = zeros(1,long);

%¾í»ý
C = zeros(long,long1 + 2 * long2 - 2);
for i = 1:long
    for j = 1:long2
        C(i,i + j -1) = Y2(long2 - j + 1);
    end
end
C = C( : ,long2 : long);
tempY = Y1';
for i = 1: long
    Ym(i) = C(i,:) * tempY;
end



%»æÍ¼
figure(2);
%Ô­À´Y1Í¼Ïñ
subplot(2,2,1);
stem(X1,Y1,'fill');
title('x1(n)');
xlabel('n');
ylabel('x1(n)');

%Ô­À´Y2Í¼Ïñ
subplot(2,2,2);
stem(X2,Y2,'fill');
title('x2(n)');
xlabel('n');
ylabel('x2(n)');

%¾í»ýÍ¼Ïñ
subplot(2,2,3);
stem(Xm,Ym,'fill');
title('x1(n) c* x2(n)');
xlabel('n');
ylabel('x(n)');
end
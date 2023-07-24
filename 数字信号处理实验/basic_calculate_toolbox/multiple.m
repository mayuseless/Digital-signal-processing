function [Xm,Ym] = multiple(X1,Y1,X2,Y2)
figure(2)
%原本Y1图像
subplot(2,2,1)
stem(X1,Y1,'fill')
title('x1(n)');
xlabel('n');
ylabel('x1(n)');
%原本Y2图像
subplot(2,2,2)
stem(X2,Y2,'fill')
title('x2(n)');
xlabel('n');
ylabel('x2(n)');

%计算
start1 = X1(1);
long1 = length(X1);
ending1 = X1(long1);

start2 = X2(1);
long2 = length(X2);
ending2 = X2(long2);

if start1 < start2
    start = start1;
    temps = start2;
else
    start = start2;
    temps = start1;
end
if ending1 > ending2
    ending = ending1;
    tempe = ending2;
else
    ending = ending2;
    tempe = ending1;
end
%创建新的序列长度
Xm = start:ending;
long = length(Xm);
Ym = zeros(long,1);

if temps <= tempe
    for i = temps:tempe
        if i >= temps
            Ym(i - start + 1) = Y1(i - start + 1) * Y2(i - start2  + 1);
        end
    end
else
    Ym = Ym;
end

%新的图像
subplot(2,2,3)
stem(Xm,Ym,'fill')
title('x1(n)*x2(n)');
xlabel('n');
ylabel('x(n)');
refreshdata
end

function [Xm,Ym] = add(X1,Y1,X2,Y2)

%计算
start1 = X1(1);
long1 = length(X1);
ending1 = X1(long1);

start2 = X2(1);
long2 = length(X2);
ending2 = X2(long2);

if start1 < start2
    start = start1;
else
    start = start2;
end
if ending1 > ending2
    ending = ending1;
else
    ending = ending2;
end
%创建新的序列长度
Xm = start:ending;
long = length(Xm);
Ym = zeros(long,1);

for i = Xm
    if i >= start1 && i <= ending1
        Ym(i - start + 1) = Ym(i - start + 1) + Y1(i - start1 + 1);
    end
    if i >= start2 && i <= ending2
        Ym(i - start + 1) = Ym(i - start + 1) + Y2(i - start2 + 1);
    end
end

show_figure2

end
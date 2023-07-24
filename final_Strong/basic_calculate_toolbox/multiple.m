function [Xm,Ym] = multiple(X1,Y1,X2,Y2)

%����
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
%�����µ����г���
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

end
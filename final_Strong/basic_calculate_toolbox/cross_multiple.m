function [Xm,Ym] = cross_multiple(X1,Y1,X2,Y2)
%����׼��
start1 = X1(1);
long1 = length(X1);
ending1 = X1(long1);

start2 = X2(1);
long2 = length(X2);
ending2 = X2(long2);

%����
Xm = start1 + start2 : ending1 + ending2;
long = long1 + long2 - 1;
Ym = zeros(1,long);

%���
C = zeros(long,long1 + 2 * long2 - 2);
for i = 1:long
    for j = 1:long2
        C(i,i + j -1) = Y2(long2 - j + 1);
    end
end
C = C( : ,long2 : long);

%ע�����
tempY = zeros(long1,1);
for i = 1:long1
    tempY(i) = Y1(i);
end
for i = 1: long
    Ym(i) = C(i,:) * tempY;
end


end
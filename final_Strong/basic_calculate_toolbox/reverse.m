function [Xm,Ym] = reverse(X,Y)

%º∆À„
start = X(1);
long = length(X);
ending = X(long);
Ym = zeros(long,1);

Xm = (-ending):(-start);
for i = Xm;
    Ym(i + ending + 1) = Y(-i - start + 1);
end


end
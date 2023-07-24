function [Xm,Ym] = scale_transfer(X,Y,m)

%计算,m为倍数，例如:2n
start = X(1);
long = length(X);
ending = X(long);

temps = floor(start / m);
tempe = ceil(ending / m);
Xm = temps:tempe;
longm = length(Xm);
Ym = zeros(longm,1);

for i = Xm
    for j = X
        if i == X(j - start + 1) / m
            Ym(i - temps + 1) = Y(j - start + 1);
        end
    end
end


end
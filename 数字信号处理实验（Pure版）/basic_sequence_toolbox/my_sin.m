function f = my_sin(X,W)
%¼ÆËã
long = length(X);
start = X(1);
ending = X(long);
f = zeros(long,1);

for i = X
    if i >=0
        f(i - start + 1) = sin(W * i);
    end
end

end
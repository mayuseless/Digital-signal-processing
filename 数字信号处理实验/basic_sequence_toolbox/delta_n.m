function f = delta_n(X)
%º∆À„
long = length(X);
start = X(1);
ending = X(long);
f = zeros(long,1);

if start <= 0
    f(0 - start + 1) = 1;
end

%ª≠Õº
stem(X,f,'fill')
title('µ•Œª¬ˆ≥Â');
xlabel('n');
ylabel('x(n)');
end

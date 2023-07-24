function f = cycle(X,Y,N)
%����
start = X(1);
long = length(X);
ending = X(long);
%����Y
tmp = zeros(N,1);
for i = 1:long
    tmp(i) = Y(i);
end
Y = tmp;
%����X(k)
f = zeros(2*N,1);
for k = 1:N
    for n = 1:N
        f(k) = f(k) + Y(n) * exp( -1i * 2 * pi / N * (k-1) * (n-1));
        f(k + N) = f(k);
    end
end

% stem(abs(f),'fill')

end


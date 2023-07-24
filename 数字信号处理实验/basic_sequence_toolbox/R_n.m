function f = R_n(X,N)
%¼ÆËã
long = length(X);
start = X(1);
ending = X(long);
f = zeros(long,1);

for i = X
    if i >= 0 && i < N
        f(i - start + 1) = 1;
    end
end

%»­Í¼
stem(X,f,'fill')
title('¾ØÐÎ');
xlabel('n');
ylabel('x(n)');

end
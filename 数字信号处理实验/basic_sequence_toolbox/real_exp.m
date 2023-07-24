function f = real_exp(X)
%计算
long = length(X);
start = X(1);
ending = X(long);
f = zeros(long,1);

for i = X
    if i >=0
        f(i - start + 1) = exp(i);
    end
end

%画图
stem(X,f,'fill')
title('实指数');
xlabel('n');
ylabel('x(n)');

end
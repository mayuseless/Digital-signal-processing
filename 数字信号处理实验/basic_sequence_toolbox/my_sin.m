function f = my_sin(X,W)
%计算
long = length(X);
start = X(1);
ending = X(long);
f = zeros(long,1);

for i = X
    if i >=0
        f(i - start + 1) = sin(W * i);
    end
end

%画图函数，固定，该名字就行
stem(X,f,'fill')
title('正弦');
xlabel('n');
ylabel('x(n)');

end
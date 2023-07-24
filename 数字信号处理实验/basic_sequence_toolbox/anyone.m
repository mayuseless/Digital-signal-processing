function f = anyone(X,s)
%计算
start = X(1);
long = length(X);
ending = X(long);
syms x 
y = eval(s);
g = matlabFunction(y);
for i = X
    f(i - start + 1) = g(i);
end


%画图
stem(X,f,'fill')
title('任意函数')
xlabel('n');
ylabel('x(n)')

end


function f = anyone(X,s)
%����
start = X(1);
long = length(X);
ending = X(long);
syms x 
y = eval(s);
g = matlabFunction(y);
for i = X
    f(i - start + 1) = g(i);
end


%��ͼ
stem(X,f,'fill')
title('���⺯��')
xlabel('n');
ylabel('x(n)')

end


function f = real_exp(X)
%����
long = length(X);
start = X(1);
ending = X(long);
f = zeros(long,1);

for i = X
    if i >=0
        f(i - start + 1) = exp(i);
    end
end

%��ͼ
stem(X,f,'fill')
title('ʵָ��');
xlabel('n');
ylabel('x(n)');

end
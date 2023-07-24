function f = R_n(X,N)
%����
long = length(X);
start = X(1);
ending = X(long);
f = zeros(long,1);

for i = X
    if i >= 0 && i < N
        f(i - start + 1) = 1;
    end
end

%��ͼ
stem(X,f,'fill')
title('����');
xlabel('n');
ylabel('x(n)');

end
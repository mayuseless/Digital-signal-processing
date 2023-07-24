function f = cycle_time(X,Y,m,N)
%����
X = X + m;
start = X(1);
long = length(X);
ending = X(long);
%�����µ�����
counting = 0;
for i = 1:10
    if start > 0
        start = start - long;
        counting = counting + 1;
    end
end
ending = ending + counting * long;
X = start:ending;
long2 = length(X);
f = zeros(long2,1);
tmpC = long2 / long;

for i = 1:long
    f(i) = Y(i);
    for k = 1:(tmpC-1)
        f(i + long * k) = f(i);
    end
end

tmpf = zeros(long,1);
%����R_n����
for i = X;
    if i >= 1 && i <= long
        tmpf(i) = f(i - start + 1);
    end
end

Y = tmpf;
if N >= long
    %����Y
    tmp = zeros(N,1);
    for i = 1:long
        tmp(i) = Y(i);
    end
    Y = tmp;
    %����X(k)
    f = zeros(N,1);
    for k = 1:N
        for n = 1:N
            f(k) = f(k) + Y(n) * exp( -1i * 2 * pi / N * (k-1) * (n-1));
        end
    end
    
%     subplot(2,2,1)
%     stem(real(f),'fill')
%     subplot(2,2,2)
%     stem(imag(f),'fill')
    
else
    fprintf('��Ǹ���г��ȱ�N���Ⲣ��������ɢ����Ҷ�任\n')
end

end


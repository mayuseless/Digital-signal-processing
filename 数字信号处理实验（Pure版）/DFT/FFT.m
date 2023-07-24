function f = FFT(X,Y,N)

%²¹Áã
long = length(X);
tempY = zeros(N,1);
for i = 1:long
    tempY(i) = Y(i);
end
Y = tempY;

%ÅÐ¶Ï
for i = 1:N
    if power(2,i) == N
        M = i;
        break
    else
        continue
    end
end

%½øÐÐµ¹ÐòÎÊÌâ
A = Y;
LH = N / 2;
J = LH;
N1 = N - 2;
for I = 1:N1
   if I >= J
       K = LH;
       while K <= J
           J = J - K;
           K = K / 2;
       end
       J = J + K;
   else
       T = A(I);
       A(I) = A(J);
       A(J) = T;
       K = LH;
       while K <= J
           J = J - K;
           K = K / 2;
       end
       J = J + K;
   end
end

for L = 1:M
    
    B = power(2,L - 1);
    for J = 1:B
        P = power(2,M-L) * (J-1);
        for k = J:power(2,L):N
                T = A(k) + A(k + B) * exp( -1i * 2 * pi / N * P);
                A(k + B) = A(k) - A(k + B) * exp( -1i * 2 * pi / N * P);
                A(k) = T;
        end
    end 
end

f = A;

%»­Í¼
subplot(2,2,1)
stem(abs(A),'fill')
subplot(2,2,2)
stem(angle(A),'fill')

end
%循环卷积
function [Xm,Ym] = cyclic_convolution(x1,Y1,x2,Y2,N)
X1 = mod(x1,N);
X2 = mod(x2,N);
long1 = length(X1);
long2 = length(X2);

if N < max(long1,long2)
    error('N取值过小');    
end

Xm = 0 : N-1;
Ym = zeros(1,N);

%卷积
tempY1 = zeros(1,N);
for i = 1:long1
    tempY1(X1(i)+1) = Y1(i);
end
tempY2 = zeros(1,N);
for i = 1:long2
   tempY2(X2(i)+1) = Y2(i); 
end

C = zeros(N,N);
for i = 1:N
    C(i,:) = tempY1(cyclic_fun(i,N));
end

Ym = C*(tempY2');

end
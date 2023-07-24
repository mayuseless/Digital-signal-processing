%Ö÷Ñ­»·
function A = cyclic_fun(a,N)
A = zeros(1,N);
a=a+1;
for i = 1:N
    if(a-i > 0)
        A(a-i) = i;
    else
        A(N-i+a) = i;
    end
end
end
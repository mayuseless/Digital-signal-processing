function f = cycle_omega(X,Y,omega)
    %º∆À„
    start = X(1);
    long = length(X);
    ending = X(long);
    tempY = zeros(long,1);
    for n = 1:long
        tempY(n) = Y(n) * exp(-1i * 2 * pi / long * n * omega);
    end
    
    f = tempY;
    
%     subplot(2,2,1)
%     stem(X,abs(f),'fill')
%     subplot(2,2,2)
%     stem(X,angle(f),'fill')

end


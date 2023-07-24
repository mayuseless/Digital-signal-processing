function f = FT(X,Y,omega)
    %¼ÆËã
    start = X(1);
    long = length(X);
    ending = X(long);
    f = 0; 
    
    %·ûºÅ¼ÆËã
    syms w
    for k = start:ending
        f = Y(k - start + 1) * exp(-1i * w * k) + f;
    end
    %ÊıÖµ¼ÆËã
    w = omega;
    y = subs(f);
    
    
    %»­Í¼
    %·ùÆµÍ¼Ïñ
    subplot(2,2,1)
    plot(omega,abs(y))
    xlabel('\omega')
    ylabel('|X(e^{j\omega})|')
    %ÏàÆµÍ¼Ïñ
    subplot(2,2,2)
    plot(omega,angle(y))
    xlabel('\omega')
    ylabel('arg(X(e^{j\omega}))')
end
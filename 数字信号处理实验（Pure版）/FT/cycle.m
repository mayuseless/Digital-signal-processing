function f = cycle(X,Y,omega)
    %º∆À„
    start = omega(1);
    long = length(omega);
    ending = omega(long);
    
    start = floor(start / (2 * pi)) * 2 * pi - 2 * pi;
    ending = ceil(ending / (2 * pi)) * 2 * pi + 2 * pi ;
    
    %ª≠Õº
    delta = omega(2) - omega(1);
    f = FT(X,Y,start : delta : ending);
end


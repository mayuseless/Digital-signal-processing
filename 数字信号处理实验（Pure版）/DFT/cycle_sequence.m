function f = cycle_sequence(X,Y,m)
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
    
    %��ͼ
    stem(X,abs(f),'fill')

end


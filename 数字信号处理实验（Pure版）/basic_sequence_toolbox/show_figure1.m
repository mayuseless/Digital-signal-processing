if  ~isreal(Y)
    subplot(2,2,1);
    stem(X,real(Y),'fill');
    xlabel('n');
    ylabel('y(n)');
    title('实部');
    
    subplot(2,2,2);
    stem(X,imag(Y),'fill');
    xlabel('n');
    ylabel('y(n)');
    title('虚部');
    
    subplot(2,2,3);
    stem(X,abs(Y),'fill');
    xlabel('n');
    ylabel('|e(n)|');
    title('模');
    
    subplot(2,2,4);
    stem(X,angle(Y),'fill');
    xlabel('n');
    ylabel('y(n)');
    title('幅角');
else
    stem(X,Y,'fill')
    title('图像')
    xlabel('n');
    ylabel('x(n)')
end
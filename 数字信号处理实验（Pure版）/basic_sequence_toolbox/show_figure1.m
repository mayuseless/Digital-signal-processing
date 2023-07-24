if  ~isreal(Y)
    subplot(2,2,1);
    stem(X,real(Y),'fill');
    xlabel('n');
    ylabel('y(n)');
    title('ʵ��');
    
    subplot(2,2,2);
    stem(X,imag(Y),'fill');
    xlabel('n');
    ylabel('y(n)');
    title('�鲿');
    
    subplot(2,2,3);
    stem(X,abs(Y),'fill');
    xlabel('n');
    ylabel('|e(n)|');
    title('ģ');
    
    subplot(2,2,4);
    stem(X,angle(Y),'fill');
    xlabel('n');
    ylabel('y(n)');
    title('����');
else
    stem(X,Y,'fill')
    title('ͼ��')
    xlabel('n');
    ylabel('x(n)')
end
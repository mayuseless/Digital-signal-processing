function f = image_exp(X,W)
%W：复指数序列的角频率
temp = exp(1i*W*X);
f = temp';

%画图
subplot(2,2,1);
stem(X,real(f),'fill');
xlabel('n');
ylabel('x(n)');
title('实部');

subplot(2,2,2);
stem(X,imag(f),'fill');
xlabel('n');
ylabel('x(n)');
title('虚部');

subplot(2,2,3);
stem(X,abs(f),'fill');
xlabel('n');
ylabel('|e(n)|');
title('模');

subplot(2,2,4);
stem(X,angle(f),'fill');
xlabel('n');
ylabel('x(n)');
title('幅角');


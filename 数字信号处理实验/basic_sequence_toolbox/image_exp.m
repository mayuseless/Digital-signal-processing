function f = image_exp(X,W)
%W����ָ�����еĽ�Ƶ��
temp = exp(1i*W*X);
f = temp';

%��ͼ
subplot(2,2,1);
stem(X,real(f),'fill');
xlabel('n');
ylabel('x(n)');
title('ʵ��');

subplot(2,2,2);
stem(X,imag(f),'fill');
xlabel('n');
ylabel('x(n)');
title('�鲿');

subplot(2,2,3);
stem(X,abs(f),'fill');
xlabel('n');
ylabel('|e(n)|');
title('ģ');

subplot(2,2,4);
stem(X,angle(f),'fill');
xlabel('n');
ylabel('x(n)');
title('����');


function [X3,Y3] = convolution(X1,Y1,X2,Y2)
%% ����ת��������A��B ��a����b
a = min(size(X1,2) , size(Y1,2));
b = min(size(X2,2) , size(Y2,2));

A = [ linspace(X1(1),X1(a),X1(a)-X1(1) +1) ; zeros(1,X1(a)-X1(1) +1)];
for i = 1:a
    A( 2 , X1(i) -X1(1)+1) = Y1(i);
end

B = [ linspace(X2(1),X2(b),X2(b)-X2(1) +1) ; zeros(1,X2(b)-X2(1) +1)];
for i = 1:b
    B( 2 , X2(i) -X2(1)+1) = Y2(i);
end
a =X1(a)-X1(1) +1;
b =X2(b)-X2(1) +1;

if a <b
    temp = a;
    a = b;
    b = temp;
    temp = A;
    A = B;
    B = temp;
end

%% ���
X3 = A(1,1)+B(1,1) : A(1,a)+B(1,b);
len = a + b -1;
Y3 = zeros(1 , len);

C = zeros(len,a+2*b-2);
for i = 1:len
    for j =1 : b
        C(i,i +j -1) = B(2,b-j+1);
    end
end
C = C(:,b:a+b-1);

for i = 1: len
    Y3(i) = C(i,:)*A(2,:)';
end

%% ��ͼ
figure(1);
%ԭ��ͼ��
subplot(2,2,1);
stem(A(1,:),A(2,:),'fill');
title('x(n)');
xlabel('n');
ylabel('x(n)');


%ԭ��ͼ��
subplot(2,2,2);
stem(B(1,:),B(2,:),'fill');
title('x(n)');
xlabel('n');
ylabel('x(n)');

%���ͼ��
subplot(2,2,[3 4]);
stem(X3,Y3,'fill');
title('x(n)');
xlabel('n');
ylabel('x(n)');
end
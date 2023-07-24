function f = image_exp(X,W)
%W：复指数序列的角频率
temp = exp(1i*W*X);
f = temp';

end


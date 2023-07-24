BST_help
temp = 'y';
while(temp == 'y')
    %输入过程
    try
        fprintf('------------------------------------------------------------------------\n')
        X = eval(input('请输入序列的范围X(或者已经存在的X1、X2...):\n','s'));
        Y = eval(input('请输入序列的值Y(或者已经存在的Y1、Y2...):\n','s'));
    catch e
        getReport(e)
        fprintf('*******警告:您的输入有问题,请规范输入一遍!******\n')
        X = eval(input('请输入序列的范围X(或者已经存在的X1、X2...):\n','s'));
        Y = eval(input('请输入序列的值Y(或者已经存在的Y1、Y2...):\n','s'));
    end
    
    %画图过程
    show_figure1

    
    %保存过程
    temp2 = input('是否继续构造序列?[y/n]\n','s');
    if temp2 == 'y'
        try
            %保存过程
            fprintf('------------------------------------------------------------------------\n')
            eval(input('请设置变量保存一下刚才的计算值（例如:X1 = X;Y1 = Y;）\n','s'))
        catch e
            getReport(e)
            fprintf('******警告:您的输入有问题,请规范输入一遍!******\n')
            eval(input('请设置变量保存一下刚才的计算值（例如:X1 = X;Y1 = Y;）\n','s'))
        end
        temp = 'y';
    else
        fprintf('正在退出序列构造器.....\n\n')
        temp = 'n';
    end
end
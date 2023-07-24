DFT_help
%输入过程
temp = 'y';
while(temp == 'y')
    
    try
        fprintf('------------------------------------------------------------------------\n')
        eval(input('请输入变换，注意保存输出值:\n','s'));
    catch e
        getReport(e)
        fprintf('******警告:您的输入有问题,请规范输入一遍!******\n')
        eval(input('请输入变换，注意保存输出值:\n','s'));
    end
    
    temp2 = input('是否要继续做DFT(FFT)的变换?[y/n]\n','s');
    if temp2 == 'y'
        fprintf('如果有多个输出值，会在提示里面有哦！！！\n')
        temp = 'y';
    else
        fprintf('正在退出DFT(FFT)变换器.....\n\n')
        temp = 'n';
    end
    
end

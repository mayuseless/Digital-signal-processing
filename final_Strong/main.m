%开始程序
opening
addpath(genpath('.\basic_sequence_toolbox'))
addpath(genpath('.\basic_calculate_toolbox'))
addpath(genpath('.\FT'))
addpath(genpath('.\ZT'))
GUI

temp0 = input('计算程序即将开始，您是否要继续?[y/n]\n','s');
while temp0 == 'y'     
    fprintf('输入1开始构建序列\n')
    fprintf('输入2开始计算序列\n')
    fprintf('输入3开始傅里叶变换\n')
    fprintf('输入4开始Z变换\n')
    fprintf('输入5开始离散傅里叶变换和快速傅里叶变换\n')
    fprintf('输入n退出脚本')
    temp1 = input('请输入\n','s');
    if temp1 == '1'
        BST_main
        temp0 = 'y';
    elseif temp1 == '2'
        BCT_main
        temp0 = 'y';
    elseif temp1 == '3'
        FT_main
        temp0 = 'y';
    elseif temp1 == '4'
        ZT_main
        temp0 = 'y';
    elseif temp1 == '5'
        DFT_main
        temp0 = 'y';
    elseif temp1 == 'n'
        temp0 = temp1;
    end
end
 fprintf('撒拉嘿哟,886！\n')
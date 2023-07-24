fprintf('------------------------------------------------------------------------\n')
fprintf('提示:\n')
fprintf('      FT          傅里叶变换   参数为向量X,Y           向量omega            输出值为f\n');
fprintf('      cycle       周期性       参数为向量X,Y           向量omega            输出值为f\n');
fprintf('      time_shift  时移性       参数为向量X,Y           向量omega,常数n      输出值为f\n');
fprintf('      omega_shift 频移性       参数为向量X,Y           向量omega,常数omega0 输出值为f\n');
fprintf('      symmetry    对称性       参数为向量X,Y           向量omega            输出值为Ye,Yo,FTe,FTo\n');
fprintf('      time_conv   时域卷积     参数为向量X1,Y1,H2,Y2   向量omega            输出值为FTX,FTH,FTY\n');
fprintf('      parseval    帕斯瓦尔     参数为向量X,Y                                输出值为sumn,sn\n');
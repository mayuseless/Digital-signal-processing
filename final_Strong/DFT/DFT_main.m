DFT_help
%�������
temp = 'y';
while(temp == 'y')
    
    try
        fprintf('------------------------------------------------------------------------\n')
        eval(input('������任��ע�Ᵽ�����ֵ:\n','s'));
    catch e
        getReport(e)
        fprintf('******����:��������������,��淶����һ��!******\n')
        eval(input('������任��ע�Ᵽ�����ֵ:\n','s'));
    end
    
    temp2 = input('�Ƿ�Ҫ������DFT(FFT)�ı任?[y/n]\n','s');
    if temp2 == 'y'
        fprintf('����ж�����ֵ��������ʾ������Ŷ������\n')
        temp = 'y';
    else
        fprintf('�����˳�DFT(FFT)�任��.....\n\n')
        temp = 'n';
    end
    
end

%��ʼ����
opening
addpath(genpath('.\basic_sequence_toolbox'))
addpath(genpath('.\basic_calculate_toolbox'))
addpath(genpath('.\FT'))
addpath(genpath('.\ZT'))
GUI

temp0 = input('������򼴽���ʼ�����Ƿ�Ҫ����?[y/n]\n','s');
while temp0 == 'y'     
    fprintf('����1��ʼ��������\n')
    fprintf('����2��ʼ��������\n')
    fprintf('����3��ʼ����Ҷ�任\n')
    fprintf('����4��ʼZ�任\n')
    fprintf('����5��ʼ��ɢ����Ҷ�任�Ϳ��ٸ���Ҷ�任\n')
    fprintf('����n�˳��ű�')
    temp1 = input('������\n','s');
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
 fprintf('������Ӵ,886��\n')
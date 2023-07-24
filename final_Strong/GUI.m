function GUI()
% ���
Fig1 = figure('Position',[100,200,300,400],'menu','none');
Fig1.Color = 'white';
Fig1.NumberTitle = 'off';
Fig1.Name = 'С�������źż���';

% ��ť
num = 6;
for n = 1:num
        p = [0.05,1-n/num,0.9,1/num];
        Bt{n} = uicontrol(Fig1,'style','pushbutton',...
                     'Fontsize',16,...
                     'Units','normalized','Position',p);
end

Bt{1}.String = '1.��������';
Bt{2}.String = '2.��������';
Bt{3}.String = '3.����Ҷ�任';
Bt{4}.String = '4.Z�任';
Bt{5}.String = '<html>5.��ɢ����Ҷ�任<br>&nbsp&nbsp���ٸ���Ҷ�任</html>';
Bt{6}.String = '�˳��ű�';

Bt{1}.Callback = @Doit1;
Bt{2}.Callback = @Doit2;
Bt{3}.Callback = @Doit3;
Bt{4}.Callback = @Doit4;
Bt{5}.Callback = @Doit5;
Bt{6}.Callback = @Doit6;

    function Doit1(~,~)
        opening
        addpath(genpath('.\basic_sequence_toolbox'))
        close()
        cd('.\basic_sequence_toolbox')
        anyone_GUI
    end
    function Doit2(~,~)
        opening
        addpath(genpath('.\basic_calculate_toolbox'))
        close()
        cd('.\basic_calculate_toolbox')
        multiple_GUI
    end
    function Doit3(~,~)
        opening
        addpath(genpath('.\FT'))
        close()
        cd('.\FT')
        FT_GUI
    end
    function Doit4(~,~)
        opening
        addpath(genpath('.\ZT'))
        close()
        cd('.\ZT')
        ZT_GUI
    end
    function Doit5(~,~)
        opening
        addpath(genpath('.\DFT'))
        close()
        cd('.\DFT')
        DFT_GUI
    end
    function Doit6(~,~)
        fprintf('������Ӵ,886��\n')
        close();
    end


end


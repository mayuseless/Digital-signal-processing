function GUI3()

im = ones(100,100,3);

Fig = figure('Position',[500,200,900,600],'menu','none');
Fig.Color = 'white';
Fig.NumberTitle = 'off';
Fig.Name = 'GUI3';

% ��ͼ���
Pnl1 = uipanel(Fig,'Position',[0.05,0.35,0.9,0.6],...
    'Title','��ͼ����','Fontsize',14);
% ѡ������
Pnl2 = uipanel(Fig,'Position',[0.05,0.05,0.3,0.3],...
    'Title','��ѡ��','Fontsize',14);
Pnl3 = uipanel(Fig,'Position',[0.35,0.05,0.3,0.3],...
    'Title','��ѡ��','Fontsize',14);
% ��ť��
Pnl4 = uibuttongroup (Fig,'Position',[0.65,0.05,0.3,0.3],...
    'Title','��ѡ����','Fontsize',14);

Axes1 = axes(Pnl1,'Position',[0,0,1/3,1]);
Axes2 = axes(Pnl1,'Position',[1/3,0,1/3,1]);
Axes3 = axes(Pnl1,'Position',[2/3,0,1/3,1]);

checkBoxList = {'��','��','��'};
colorList = {[1,0.6,0.6],[0.6,1,0.6],[0.6,0.6,1]};
BtGroup1 = cell(3,1);
for n = 1:3
    BtGroup1{n} = uicontrol(Pnl2,'style','checkbox',...
        'String',checkBoxList{n},'Fontsize',16,'BackgroundColor',colorList{n},...
        'Units','normalized','Position',[0.2,1-n/3,0.6,1/3],...
        'Callback',@ChangeColor1);
end

BtGroup2 = cell(3,1);
for n = 1:3
    BtGroup2{n} = uicontrol(Pnl3,'style','radiobutton',...
        'String',checkBoxList{n},'Fontsize',16,'BackgroundColor',colorList{n},...
        'Units','normalized','Position',[0.2,1-n/3,0.6,1/3],...
        'Callback',@ChangeColor2);
end

BtGroup3 = cell(3,1);
for n = 1:3
    BtGroup3{n} = uicontrol(Pnl4,'style','radiobutton',...
        'String',checkBoxList{n},'Fontsize',16,'BackgroundColor',colorList{n},...
        'Units','normalized','Position',[0.2,1-n/3,0.6,1/3],...
        'Callback',@ChangeColor3);
end

% ��ʼ��
ChangeColor1()
ChangeColor2()
ChangeColor3()

    function ChangeColor1(~,~)
        rgb = zeros(1,1,3);
        for i = 1:3
            rgb(i) = get(BtGroup1{i},'Value');
        end
        imnew = im.*rgb;
        imshow(imnew,'Parent',Axes1);
    end

    function ChangeColor2(~,~)
        rgb = zeros(1,1,3);
        for i = 1:3
            rgb(i) = get(BtGroup2{i},'Value');
        end
        imnew = im.*rgb;
        imshow(imnew,'Parent',Axes2);
    end

    function ChangeColor3(~,~)
        rgb = zeros(1,1,3);
        for i = 1:3
            rgb(i) = get(BtGroup3{i},'Value');
        end
        imnew = im.*rgb;
        imshow(imnew,'Parent',Axes3);
    end

end

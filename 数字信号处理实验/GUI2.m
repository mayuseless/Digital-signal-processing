function GUI2()

Fig = figure('Position',[700,200,600,600],'menu','none');
%figure('Position',[200,100,800,500],'menu','none');
Fig.Color = 'white';
Fig.NumberTitle = 'off';
Fig.Name = 'GUI2';

Pnl1 = uipanel(Fig,'Position',[0.1,0.17,0.8,0.8]);
Pnl2 = uipanel(Fig,'Position',[0.1,0.05,0.8,0.1]);

Axes = axes(Pnl1,'Position',[0,0,1,1]);

Bt1= uicontrol(Pnl2,'style','pushbutton',...
    'String','�����','Fontsize',16,...
    'Units','normalized','Position',[0,0,0.5,1],'Callback',@ChangeColor);
Bt2 = uicontrol(Pnl2,'style','togglebutton','String','����','Fontsize',16,...
    'Units','normalized','Position',[0.5,0,0.5,1],'Callback',@Lock);

state = 0;
im = ones(100,100,3);
imshow(im,'Parent',Axes)

    function ChangeColor(~,~)
        if state
            rgb = rand(1,1,3);
            imnew = im.*rgb;
            imshow(imnew,'Parent',Axes)
        end
    end

    function Lock(~,~)
        state = get(Bt2,'Value');
        if state
            set(Bt2,'String','����')
            set(Bt1,'String','������ɫ')
        else
            set(Bt2,'String','����')
            set(Bt1,'String','�����')
        end
    end

end

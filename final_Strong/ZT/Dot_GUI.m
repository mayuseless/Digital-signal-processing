function varargout = Dot_GUI(varargin)
% Dot_GUI MATLAB code for Dot_GUI.fig
%      Dot_GUI, by itself, creates a new Dot_GUI or raises the existing
%      singleton*.
%
%      H = Dot_GUI returns the handle to a new Dot_GUI or the handle to
%      the existing singleton*.
%
%      Dot_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Dot_GUI.M with the given input arguments.
%
%      Dot_GUI('Property','Value',...) creates a new Dot_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Dot_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Dot_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Dot_GUI

% Last Modified by GUIDE v2.5 13-Nov-2022 20:32:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Dot_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Dot_GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Dot_GUI is made visible.
function Dot_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Dot_GUI (see VARARGIN)

% Choose default command line output for Dot_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Dot_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Dot_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in p1.
function p1_Callback(hObject, eventdata, handles)
% hObject    handle to p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global X1 Y1 Zeros Pole Max
[Zeros,Pole,Max] = Dot(X1,Y1);
%��ͼ
plot(handles.axes1,Zeros,'o')
title('���ֲ�ͼ')
plot(handles.axes2,Pole,'o')
title('����ֲ�ͼ')

if Max > max(abs(Pole))
    if Max > 1
        c = '��Ӧ��ϵͳ������Ժ��ȶ���';
        set(handles.text3,'string',c);
        %         fprintf('��Ӧ��ϵͳ������Ժ��ȶ���\n')
    else
        c = '��Ӧ��ϵͳ������ԣ����������ȶ���';
        set(handles.text3,'string',c);
        %         fprintf('��Ӧ��ϵͳ������ԣ����������ȶ���\n')
    end
elseif Max < max(abs(Pole)) && Max > 1
    c = '��Ӧ��ϵͳ���ȶ��ԣ��������';
    set(handles.text3,'string',c);
%     fprintf('��Ӧ��ϵͳ���ȶ��ԣ��������\n')
else
    c = '��Ӧ��ϵͳ���ȶ��ԣ��������';
    set(handles.text3,'string',c);
%     fprintf('��Ӧ��ϵͳ���ȶ��ԣ��������\n')
end





function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
global X1
c = get(hObject,'string');
X1 = str2num(c);


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in p2.
function p2_Callback(hObject, eventdata, handles)
% hObject    handle to p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close()
addpath(genpath('..'))
cd('..')
GUI



% --- Executes on button press in p4.
function p4_Callback(hObject, eventdata, handles)
% hObject    handle to p4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global var
switch var
    case 1
        close()
        ZT_GUI
    case 2
        close()
        IZT_GUI
    case 3
        close()
        Dot_GUI
end


% --- Executes on selection change in kj1.
function kj1_Callback(hObject, eventdata, handles)
% hObject    handle to kj1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns kj1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from kj1
global var 
var = get(handles.kj1,'value'); 
%�õ������˵��ؼ���valueֵ���Ա�ȷ��������ǿؼ�����һ��




% --- Executes during object creation, after setting all properties.
function kj1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kj1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function text2_Callback(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text2 as text
%        str2double(get(hObject,'String')) returns contents of text2 as a double
global Y1 
c = get(hObject,'string');
Y1 = str2num(c);


% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end










% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Zeros
plot(handles.axes1,Zeros,'o')
title('���ֲ�ͼ')






% --- Executes on mouse press over axes background.
function axes2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Pole
plot(handles.axes2,Pole,'o')
title('����ֲ�ͼ')


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2

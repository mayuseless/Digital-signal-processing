function varargout = u_n_GUI(varargin)
% U_N_GUI MATLAB code for u_n_GUI.fig
%      U_N_GUI, by itself, creates a new U_N_GUI or raises the existing
%      singleton*.
%
%      H = U_N_GUI returns the handle to a new U_N_GUI or the handle to
%      the existing singleton*.
%
%      U_N_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in U_N_GUI.M with the given input arguments.
%
%      U_N_GUI('Property','Value',...) creates a new U_N_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before u_n_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to u_n_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help u_n_GUI

% Last Modified by GUIDE v2.5 11-Nov-2022 21:26:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @u_n_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @u_n_GUI_OutputFcn, ...
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


% --- Executes just before u_n_GUI is made visible.
function u_n_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to u_n_GUI (see VARARGIN)

% Choose default command line output for u_n_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes u_n_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = u_n_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global X Y
axes0



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
% ����������text1
global X Y
c = get(hObject,'string');
X = str2num(c);
c = num2str(X);
set(handles.text2,'string',c);
% �����̬text2


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


% --- Executes on button press in p1.
function p1_Callback(hObject, eventdata, handles)
% hObject    handle to p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global X Y
Y = u_n(X);
axes0


% --- Executes on button press in p2.
function p2_Callback(hObject, eventdata, handles)
% hObject    handle to p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close()
addpath(genpath('..'))
cd('..')
GUI


% --- Executes on selection change in kj1.
function kj1_Callback(hObject, eventdata, handles)
% hObject    handle to kj1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns kj1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from kj1
global var 
var = get(handles.kj1,'value'); 
% set(handles.p4,'string',var);
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


% --- Executes on button press in p4.
function p4_Callback(hObject, eventdata, handles)
% hObject    handle to p4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% A = get(handles.p4,'string');
global var
% disp(var)
switch var
    case 1
        close()
        delta_n_GUI
    case 2
        close()
        u_n_GUI
    case 3
        close()
        R_n_GUI
    case 4
        close()
        real_exp_GUI
    case 5
        close()
        my_sin_GUI
    case 6
        close()
        image_exp_GUI
    case 7
        close()
        anyone_GUI
end

function varargout = parseval_GUI(varargin)
% parseval_GUI MATLAB code for parseval_GUI.fig
%      parseval_GUI, by itself, creates a new parseval_GUI or raises the existing
%      singleton*.
%
%      H = parseval_GUI returns the handle to a new parseval_GUI or the handle to
%      the existing singleton*.
%
%      parseval_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in parseval_GUI.M with the given input arguments.
%
%      parseval_GUI('Property','Value',...) creates a new parseval_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before parseval_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to parseval_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help parseval_GUI

% Last Modified by GUIDE v2.5 13-Nov-2022 19:39:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @parseval_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @parseval_GUI_OutputFcn, ...
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


% --- Executes just before parseval_GUI is made visible.
function parseval_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to parseval_GUI (see VARARGIN)

% Choose default command line output for parseval_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes parseval_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = parseval_GUI_OutputFcn(hObject, eventdata, handles) 
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
global X1 Y1 sumn sn
[sumn,sn] = parseval(X1,Y1);
c1 = num2str(sumn);
c2 = num2str(sn);
set(handles.text5,'string',c1);
set(handles.text6,'string',c2);
% fprintf('\n前半段的值:')
% fprintf('%d\n',sumn)
% fprintf('后半段的值:')
% fprintf('%d\n',sn)
if sumn == sn
    c = '这说明符合怕死娃儿定理!';
    set(handles.text7,'string',c);
else
    set(handles.text7,'string','不满足');
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
        FT_GUI
    case 2
        close()
        cycle_GUI
    case 3
        close()
        time_shift_GUI
    case 4
        close()
        omega_shift_GUI
    case 5
        close()
        symmetry_GUI
    case 6
        close()
        time_conv_GUI
    case 7
        close()   
        parseval_GUI
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
%得到下拉菜单控件的value值，以便确定点击的是控件的哪一行




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

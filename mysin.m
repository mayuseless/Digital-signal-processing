function varargout = mysin(varargin)
% MYSIN MATLAB code for mysin.fig
%      MYSIN, by itself, creates a new MYSIN or raises the existing
%      singleton*.
%
%      H = MYSIN returns the handle to a new MYSIN or the handle to
%      the existing singleton*.
%
%      MYSIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MYSIN.M with the given input arguments.
%
%      MYSIN('Property','Value',...) creates a new MYSIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mysin_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mysin_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mysin

% Last Modified by GUIDE v2.5 22-Oct-2022 21:50:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mysin_OpeningFcn, ...
                   'gui_OutputFcn',  @mysin_OutputFcn, ...
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


% --- Executes just before mysin is made visible.
function mysin_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mysin (see VARARGIN)

% Choose default command line output for mysin
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mysin wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mysin_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
number = get(hObject , 'string');
set(hObject, 'string' , num2str(str2num(number) + 1));
fprintf('%d次',str2num(number));
A = get(handles.text2,'string');
B= str2num(A);

disp(B);
stem(B);
title('function');
grid on;

% A = get(handles.text2,'string');
% B= str2num(A);
% 
% stem(B);
% title('function');
% grid on;





% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all


function edit2_Callback(hObject, eventdata, handles) 
% 现有输入数text1
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
c = get(hObject,'string');
B = str2num(c);
c = num2str(B);
set(handles.text2,'string',c);
% 输出静态text2



% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on mouse press over axes background.
function axes3_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.text2,'string');
B= str2num(A);

stem(B);
title('function');
grid on;

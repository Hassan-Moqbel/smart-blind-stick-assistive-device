
function varargout = calculatora(varargin)

% CALCULATORA MATLAB code for calculatora.fig
%      CALCULATORA, by itself, creates a new CALCULATORA or raises the existing
%      singleton*.
%
%      H = CALCULATORA returns the handle to a new CALCULATORA or the handle to
%      the existing singleton*.
%
%      CALCULATORA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATORA.M with the given input arguments.
%
%      CALCULATORA('Property','Value',...) creates a new CALCULATORA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculatora_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculatora_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculatora

% Last Modified by GUIDE v2.5 12-Sep-2023 00:56:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculatora_OpeningFcn, ...
                   'gui_OutputFcn',  @calculatora_OutputFcn, ...
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


% --- Executes just before calculatora is made visible.
function calculatora_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculatora (see VARARGIN)

% Choose default command line output for calculatora
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculatora wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculatora_OutputFcn(hObject, eventdata, handles)
msgbox(' ENG.hassan is calculator wellcome YOU');
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function pantalla_Callback(hObject, eventdata, handles)

% hObject    handle to pantalla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pantalla as text
%        str2double(get(hObject,'String')) returns contents of pantalla as a double


% --- Executes during object creation, after setting all properties.
function pantalla_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pantalla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in graf.
function graf_Callback(hObject, eventdata, handles)
axes(handles.axes1);
valor=get(handles.pantalla,'string');
hold on
ezplot(valor)
grid
hold off
% hObject    handle to graf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PAR.
function PAR_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'x')
set(handles.pantalla,'string',s); 
% hObject    handle to PAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in RAIZ2.
function RAIZ2_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'sqrt(')
set(handles.pantalla,'string',s); 
% hObject    handle to RAIZ2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in RAIZ3.
function RAIZ3_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat('nthroot(',s,'3)')
set(handles.pantalla,'string',s); 
% hObject    handle to RAIZ3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SQART3.
function SQART3_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'^3')
set(handles.pantalla,'string',s); 
% hObject    handle to SQART3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in INN.
function INN_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'log(')
set(handles.pantalla,'string',s); 
% hObject    handle to INN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SQART2.
function SQART2_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'^2')
set(handles.pantalla,'string',s); 
% hObject    handle to SQART2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in LOGARITHM.
function LOGARITHM_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'log10(')
set(handles.pantalla,'string',s); 
% hObject    handle to LOGARITHM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SINE.
function SINE_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'sin(')
set(handles.pantalla,'string',s); 
% hObject    handle to SINE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in RAIZ.
function RAIZ_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'nthroot(')
set(handles.pantalla,'string',s); 
% hObject    handle to RAIZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in COSE.
function COSE_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'cos(')
set(handles.pantalla,'string',s); 
% hObject    handle to COSE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in TANE.
function TANE_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'tan(')
set(handles.pantalla,'string',s); 
% hObject    handle to TANE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in brak.
function brak_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'(')
set(handles.pantalla,'string',s); 
% hObject    handle to brak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'^')
set(handles.pantalla,'string',s); 
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PI.
function PI_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'pi')
set(handles.pantalla,'string',s); 
% hObject    handle to PI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in THREE.
function THREE_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'3')
set(handles.pantalla,'string',s); 
% hObject    handle to THREE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in COMMA.
function COMMA_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,',')
set(handles.pantalla,'string',s); 
% hObject    handle to COMMA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SIX.
function SIX_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'6')
set(handles.pantalla,'string',s); 
% hObject    handle to SIX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'9')
set(handles.pantalla,'string',s); 
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in EIGHT.
function EIGHT_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'8')
set(handles.pantalla,'string',s); 
% hObject    handle to EIGHT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in FIVE.
function FIVE_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'5')
set(handles.pantalla,'string',s); 
% hObject    handle to FIVE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SEVEN.
function SEVEN_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'7')
set(handles.pantalla,'string',s); 
% hObject    handle to SEVEN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in FORE.
function FORE_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'4')
set(handles.pantalla,'string',s); 
% hObject    handle to FORE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in POINT.
function POINT_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'.')
set(handles.pantalla,'string',s); 
% hObject    handle to POINT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ONE.
function ONE_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'1')
set(handles.pantalla,'string',s); 
% hObject    handle to ONE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ZERO.
function ZERO_Callback(hObject, eventdata, handles)
msgbox(' Donnot divide zero by any number because it is not known yet');
s=get(handles.pantalla,'string');
s=strcat(s,'0')
set(handles.pantalla,'string',s);
% hObject    handle to ZERO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in mult.
function mult_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'*')
set(handles.pantalla,'string',s);
% hObject    handle to mult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in div.
function div_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'/')
set(handles.pantalla,'string',s);
% hObject    handle to div (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in PLA.
function PLA_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'+')
set(handles.pantalla,'string',s); 
% hObject    handle to PLA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in MIN.
function MIN_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'-')
set(handles.pantalla,'string',s); 
% hObject    handle to MIN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in TOW.
function TOW_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'2')
set(handles.pantalla,'string',s); 
% hObject    handle to TOW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=eval(s)
set(handles.pantalla,'string',s);
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in CLE.
function CLE_Callback(hObject, eventdata, handles)
s=char(' ');
set(handles.pantalla,'string',s);
% hObject    handle to CLE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in brac.
function brac_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,')')
set(handles.pantalla,'string',s); 
% hObject    handle to brac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function div_CreateFcn(hObject, eventdata, handles)
% hObject    handle to div (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in hexedicmal.
function hexedicmal_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'HEX(')
set(handles.pantalla,'string',s); 
% hObject    handle to hexedicmal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in decimal.
function decimal_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'DEC(')
set(handles.pantalla,'string',s); 
% hObject    handle to decimal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in bainary.
function bainary_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'BIN(')
set(handles.pantalla,'string',s); 
% hObject    handle to bainary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in octinary.
function octinary_Callback(hObject, eventdata, handles)
s=get(handles.pantalla,'string');
s=strcat(s,'OCT(')
set(handles.pantalla,'string',s); 
% hObject    handle to octinary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

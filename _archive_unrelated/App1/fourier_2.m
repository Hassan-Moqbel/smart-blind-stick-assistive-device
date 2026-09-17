function varargout = fourier_2(varargin)
% FOURIER_2 MATLAB code for fourier_2.fig
%      FOURIER_2, by itself, creates a new FOURIER_2 or raises the existing
%      singleton*.
%
%      H = FOURIER_2 returns the handle to a new FOURIER_2 or the handle to
%      the existing singleton*.
%
%      FOURIER_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FOURIER_2.M with the given input arguments.
%
%      FOURIER_2('Property','Value',...) creates a new FOURIER_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fourier_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fourier_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fourier_2

% Last Modified by GUIDE v2.5 13-Sep-2023 00:13:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fourier_2_OpeningFcn, ...
                   'gui_OutputFcn',  @fourier_2_OutputFcn, ...
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


% --- Executes just before fourier_2 is made visible.
function fourier_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fourier_2 (see VARARGIN)

% Choose default command line output for fourier_2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fourier_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fourier_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in select.
function select_Callback(hObject, eventdata, handles)
    % Open a dialog box to select the sequence
    [filename, pathname] = uigetfile('*.mat', 'Select Sequence File');

    % Check if the user selected a file
    if isequal(filename,0) || isequal(pathname,0)
        % No file was selected
        return;
    end

    % Get the full path of the selected file
    fullpath = fullfile(pathname, filename);

    % Load the sequence from the file
    sequence = load(fullpath);

    % Display the sequence in the user interface or perform the required operations
    handles.sequence = sequence; % Use the variable name you prefer to store the sequence in the user interface

    % Update the user interface with the details of the selected sequence
    % For example:
    set(handles.sequenceText, 'String', ['Selected Sequence: ' filename]);

    % Save the updates to the user interface
    guidata(hObject, handles);

% hObject    handle to select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in calplo.
function calplo_Callback(hObject, eventdata, handles)
    % Call the required functions to calculate and plot the Fourier series
    % Customize the following code according to your equations and data

    % Calculate the Fourier series for the sequence handles.sequence
    fourierSeries = calculateFourierSeries(handles.sequence);

    % Plot the Fourier series on the plot axis handles.plotAxes
    plot(handles.plotAxes, fourierSeries);

    % Reset the axis to ensure proper display of the graph
    axis(handles.plotAxes, 'auto');

    % Save the updates to the user interface
    guidata(hObject, handles);


% hObject    handle to calplo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in clee.
function clee_Callback(hObject, eventdata, handles)
    % Clear the content in the user interface or other associated data

    % For example:
    set(handles.sequenceText, 'String', ' ');
    cla(handles.plotAxes);

    % Save the updates to the user interface
    guidata(hObject, handles);


% hObject    handle to clee (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
    % Get the current plot from the plot axis
    currentPlot = handles.plotAxes; % Use the name of the plot axis you assigned in the user interface

    % Prepare the save file dialog
    [filename, pathname] = uiputfile({'*.png', 'PNG Files (*.png)'; '*.jpg', 'JPEG Files (*.jpg)'}, 'Save Plot As');
    
    % Check if the user selected a file for saving
    if isequal(filename,0) || isequal(pathname,0)
        % No file was selected for saving
        return;
    end
    
    % Get the full path of the selected file
    fullpath = fullfile(pathname, filename);

    % Save the plot as an image file
    saveas(currentPlot, fullpath);
    
    % Show a confirmation message for successful saving
    msgbox('Plot saved successfully.', 'Save Plot', 'moda');

% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

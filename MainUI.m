function varargout = MainUI(varargin)
% MAINUI MATLAB code for MainUI.fig
%      MAINUI, by itself, creates a new MAINUI or raises the existing
%      singleton*.
%
%      H = MAINUI returns the handle to a new MAINUI or the handle to
%      the existing singleton*.
%
%      MAINUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINUI.M with the given input arguments.
%
%      MAINUI('Property','Value',...) creates a new MAINUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MainUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MainUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MainUI

% Last Modified by GUIDE v2.5 08-Apr-2018 15:17:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MainUI_OpeningFcn, ...
                   'gui_OutputFcn',  @MainUI_OutputFcn, ...
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
end

% --- Executes just before MainUI is made visible.
function MainUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MainUI (see VARARGIN)

% Choose default command line output for MainUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MainUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);

telescopeWorld = vrworld('plunger.wrl');
open(telescopeWorld);
panel = findall(hObject,'Tag', 'uipanel2');
vircan = vr.canvas(telescopeWorld, panel);
end

% --- Outputs from this function are returned to the command line.
function varargout = MainUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

telescopeWorld = vrworld('plunger.wrl');
open(telescopeWorld);
telescopeWorld.Telescope.rotation = [1 1 1 0]
telescopeWorld.Sphere.rotation = [1 1 1 0]
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close(gcf)
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
end

% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

btncallscripts(hObject, eventdata, handles);
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

btncallscripts(hObject, eventdata, handles);
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

btncallscripts(hObject, eventdata, handles);
end

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

btncallscripts(hObject, eventdata, handles);

end

% --- Executes on button press in radiobutton2.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
disp("radio 1");

end

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
disp("radio 2");

end

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
disp("radio 3");

end

function btncallscripts (hObject, eventdata, handles)
controllerName = "";
%global radio 
radio = findobj('Tag', 'uibuttongroup1');
%get(radio)
radiobutn = radio.SelectedObject;
radioVal= radiobutn.UserData;
btnVal = hObject.UserData;

run('telescoperotation');

%PID, PI, PD, P
PIDvaluesTF1 = [["78772245.8883" "1033262529.7528" "14994.315"]; ["0" "0" "0"]; ["14293.4747" "0" "903.6407"]; ["0" "0" "0"]];
PIDvaluesTF2 = [["7872245.8883" "1033262529.7528" "14994.315"]; ["0" "0" "0"]; ["6.0157" "0" "6.0035"]; ["0" "0" "0"]];
PIDvaluesTF3 = [["60512209999951.46" "3.738581150632655e+26" "0.1021"]; ["663.4084" "7703.8239" "0"]; ["6.0512" "0" "0.49577"]; ["4.9984" "0" "0"]];
settlingtimes1 = [0.00156,0,0.00361,0];
settlingtimes2 = [0.00156,0,1.28,0];
settlingtimes3 = [1.91e-13,0.00492,1.92,1.96];

PIDvalues = [];
settlingtimes = [];
switch radioVal
    case 'a'
        set_param('telescoperotation/G_S1', 'Denominator', "[1 -2 -3]");
        set_param('telescoperotation/G_S2', 'Denominator', "[1 -2 -3]");
        set_param('telescoperotation/H_S1', 'Denominator', "[10]");
        set_param('telescoperotation/H_S2', 'Denominator', "[10]");
        PIDvalues = PIDvaluesTF1;
        settlingtimes = settlingtimes1;
    case 'b'
        set_param('telescoperotation/G_S1', 'Denominator', "[1 -2 -3]");
        set_param('telescoperotation/G_S2', 'Denominator', "[1 -2 -3]");
        set_param('telescoperotation/H_S1', 'Denominator', "[10]");
        set_param('telescoperotation/H_S2', 'Denominator', "[10]");
        PIDvalues = PIDvaluesTF2;
        settlingtimes = settlingtimes2;
    case 'c'
        set_param('telescoperotation/G_S1', 'Denominator', "[1 -3]");
        set_param('telescoperotation/G_S2', 'Denominator', "[1 -3]");
        set_param('telescoperotation/H_S1', 'Denominator', "[10 10]");
        set_param('telescoperotation/H_S2', 'Denominator', "[10 10]");
        PIDvalues = PIDvaluesTF3;
        settlingtimes = settlingtimes1;
end

settlingTime = 0;
switch btnVal
    case 'P'
        PIDvalues = PIDvalues(4,:);
        settlingTime = settlingtimes(4);
    case 'PI'
        PIDvalues = PIDvalues(2,:);
        settlingTime = settlingtimes(2);
    case 'PD'
        PIDvalues = PIDvalues(3,:);
        settlingTime = settlingtimes(3);
    case 'PID'
        PIDvalues = PIDvalues(1,:);
        settlingTime = settlingtimes(1);
end

Kp = PIDvalues(1);
Ki = PIDvalues(2);
Kd = PIDvalues(3);

%Set PID K values
set_param('telescoperotation/KP', 'Value', Kp);
set_param('telescoperotation/KI', 'Value', Ki);
set_param('telescoperotation/KD', 'Value', Kd);

%Set T value
time = get(handles.time, 'String');
time = num2str(str2double(time)*2 + settlingTime);

sim('telescoperotation', "StartTime", "0", "EndTime", time);
readFile("data.txt", time);

controllerName = controllerName + radioVal + btnVal + "Controller.m";

run(controllerName);

end

function varargout = CodeWords(varargin)
% CODEWORDS MATLAB code for CodeWords.fig
%      CODEWORDS, by itself, creates a new CODEWORDS or raises the existing
%      singleton*.
%
%      H = CODEWORDS returns the handle to a new CODEWORDS or the handle to
%      the existing singleton*.
%
%      CODEWORDS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CODEWORDS.M with the given input arguments.
%
%      CODEWORDS('Property','Value',...) creates a new CODEWORDS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CodeWords_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CodeWords_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CodeWords

% Last Modified by GUIDE v2.5 12-Dec-2018 18:29:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CodeWords_OpeningFcn, ...
                   'gui_OutputFcn',  @CodeWords_OutputFcn, ...
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


% --- Executes just before CodeWords is made visible.
function CodeWords_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CodeWords (see VARARGIN)

% Choose default command line output for CodeWords
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CodeWords wait for user response (see UIRESUME)
% uiwait(handles.startTimer);

global numBlue
global numRed
global blackWord
global disneyWordBank
global starWarsWordBank
global generalWordBank

numBlue = 0;
numRed = 0;
blackWord = 'false';
set(handles.blueTeam, 'Value', 1);

%CREATE WORD GRID
disneyWordBank = ["Aladdin", "Elsa", "Woody", "Ariel", "Scar", "Simba", "Buzz Lightyear", "Jasmine", "Olaf", "Nala", "Doc Hudson", "Mater", "Mowgli", "Tigger", "Edna Mode", "Jack Sparrow", "Cinderella", "Rapunzel", "Snow White", "Mulan", "Pocahontas", "Mickey Mouse", "Minnie Mouse", "Mr. Potato Head", "Peter Pan", "Tinker Bell", "Kuzco", "Kronk", "Pacha", "Flynn Rider", "Baloo", "Mushu", "Hercules", "Ursula", "Zeus", "Moana", "Mr. Incredible", "Miguel", "Coco", "Nemo", "Dory", "Mike Wazowski", "Dumbo", "Tarzan", "Bambi", "Oozma Kappa", "Atlantis", "Neverland", "Radiator Springs", "The Black Pearl", "The Underworld", "P Sherman", "Pride Rock"];
starWarsWordBank = ["force", "jedi", "lightsaber", "stormtrooper", "ewok", "Hoth", "Tatooine", "wookiee", "yoda", "X-wing", "droid", "padawan", "Kylo Ren", "Han Solo", "death star", "Darth Vader", "C-3PO", "R2-D2", "BB-8", "emperor", "Boba Fett", "Jar Jar Binks", "clones", "Darth Maul", "Luke Skywalker", "Obi-Wan Kanobi", "Princess Leia", "The Rebellion", "Anakin", "The Empire"];
generalWordBank = ["history", "art", "world", "map", "family", "health", "guitar", "bird", "power", "dirt", "road", "chemistry", "plane", "Afghanistan", "London", "Canada", "Beijing", "Madagascar", "blood", "agent", "thief", "spy", "alcohol", "cancer", "hotel", "bread", "elevator", "guest", "strike", "freezer", "tennis", "coffee", "orange", "police", "tooth", "fall", "river", "village", "dog", "bark", "honey", "door", "light", "house", "grace", "ninja", "insect", "king", "ball", "bald", "board", "salad", "game", "tile", "microphone", "remote", "pumpkin", "client", "postcard", "pillow", "sock", "suit", "card", "diamond", "bottle", "glass", "ice", "shoe", "tie", "ring", "animal", "young", "goat", "business", "wizard", "unicorn", "beetle", "bacon", "risk", "force", "train", "garden", "sound", "future", "age", "weight", "beach", "palm", "lion", "tax", "dish", "stock", "chance", "rock", "sun", "gold", "casino", "picture", "balance", "silver", "shell", "nail", "day", "finger", "gas", "pair", "novel", "play", "bear", "theater", "net", "sea", "doctor", "helicopter", "berry", "glasses", "wood", "rug", "dream", "dance"];
num = randperm(size(generalWordBank, 2));
set(handles.word1, 'String', generalWordBank(num(1)));
set(handles.word2, 'String', generalWordBank(num(2)));
set(handles.word3, 'String', generalWordBank(num(3)));
set(handles.word4, 'String', generalWordBank(num(4)));
set(handles.word5, 'String', generalWordBank(num(5)));
set(handles.word6, 'String', generalWordBank(num(6)));
set(handles.word7, 'String', generalWordBank(num(7)));
set(handles.word8, 'String', generalWordBank(num(8)));
set(handles.word9, 'String', generalWordBank(num(9)));
set(handles.word10, 'String', generalWordBank(num(10)));
set(handles.word11, 'String', generalWordBank(num(11)));
set(handles.word12, 'String', generalWordBank(num(12)));
set(handles.word13, 'String', generalWordBank(num(13)));
set(handles.word14, 'String', generalWordBank(num(14)));
set(handles.word15, 'String', generalWordBank(num(15)));
set(handles.word16, 'String', generalWordBank(num(16)));
set(handles.word17, 'String', generalWordBank(num(17)));
set(handles.word18, 'String', generalWordBank(num(18)));
set(handles.word19, 'String', generalWordBank(num(19)));
set(handles.word20, 'String', generalWordBank(num(20)));
set(handles.word21, 'String', generalWordBank(num(21)));
set(handles.word22, 'String', generalWordBank(num(22)));
set(handles.word23, 'String', generalWordBank(num(23)));
set(handles.word24, 'String', generalWordBank(num(24)));
set(handles.word25, 'String', generalWordBank(num(25)));
%---------------------------------------

%ASSOCIATE WORD GRID WITH TEAMS
blue = ".5 .9 1";
red = "1 .4 .4";
black = "0 0 0";
neutral = ".8 .5 0";
colors = [blue, red, black, neutral];
A = randperm(25);

for i = 1:1:9
    colorOptions(A(i)) = colors(1);  
end

for i = 10:1:17
    colorOptions(A(i)) = colors(2);
end

colorOptions(A(18)) = colors(3);

for i = 19:1:25
    colorOptions(A(i)) = colors(4);
end

set(handles.square1, 'BackgroundColor', [colorOptions(1)]);
set(handles.square2, 'BackgroundColor', [colorOptions(2)]);
set(handles.square3, 'BackgroundColor', [colorOptions(3)]);
set(handles.square4, 'BackgroundColor', [colorOptions(4)]);
set(handles.square5, 'BackgroundColor', [colorOptions(5)]);
set(handles.square6, 'BackgroundColor', [colorOptions(6)]);
set(handles.square7, 'BackgroundColor', [colorOptions(7)]);
set(handles.square8, 'BackgroundColor', [colorOptions(8)]);
set(handles.square9, 'BackgroundColor', [colorOptions(9)]);
set(handles.square10, 'BackgroundColor', [colorOptions(10)]);
set(handles.square11, 'BackgroundColor', [colorOptions(11)]);
set(handles.square12, 'BackgroundColor', [colorOptions(12)]);
set(handles.square13, 'BackgroundColor', [colorOptions(13)]);
set(handles.square14, 'BackgroundColor', [colorOptions(14)]);
set(handles.square15, 'BackgroundColor', [colorOptions(15)]);
set(handles.square16, 'BackgroundColor', [colorOptions(16)]);
set(handles.square17, 'BackgroundColor', [colorOptions(17)]);
set(handles.square18, 'BackgroundColor', [colorOptions(18)]);
set(handles.square19, 'BackgroundColor', [colorOptions(19)]);
set(handles.square20, 'BackgroundColor', [colorOptions(20)]);
set(handles.square21, 'BackgroundColor', [colorOptions(21)]);
set(handles.square22, 'BackgroundColor', [colorOptions(22)]);
set(handles.square23, 'BackgroundColor', [colorOptions(23)]);
set(handles.square24, 'BackgroundColor', [colorOptions(24)]);
set(handles.square25, 'BackgroundColor', [colorOptions(25)]);
%---------------------------------------

%GLOBALIZE SQUARE COLORS
global square1Color;
global square2Color;
global square3Color;
global square4Color;
global square5Color;
global square6Color;
global square7Color;
global square8Color;
global square9Color;
global square10Color;
global square11Color;
global square12Color;
global square13Color;
global square14Color;
global square15Color;
global square16Color;
global square17Color;
global square18Color;
global square19Color;
global square20Color;
global square21Color;
global square22Color;
global square23Color;
global square24Color;
global square25Color;

square1Color = get(handles.square1, 'BackgroundColor');
square2Color = get(handles.square2, 'BackgroundColor');
square3Color = get(handles.square3, 'BackgroundColor');
square4Color = get(handles.square4, 'BackgroundColor');
square5Color = get(handles.square5, 'BackgroundColor');
square6Color = get(handles.square6, 'BackgroundColor');
square7Color = get(handles.square7, 'BackgroundColor');
square8Color = get(handles.square8, 'BackgroundColor');
square9Color = get(handles.square9, 'BackgroundColor');
square10Color = get(handles.square10, 'BackgroundColor');
square11Color = get(handles.square11, 'BackgroundColor');
square12Color = get(handles.square12, 'BackgroundColor');
square13Color = get(handles.square13, 'BackgroundColor');
square14Color = get(handles.square14, 'BackgroundColor');
square15Color = get(handles.square15, 'BackgroundColor');
square16Color = get(handles.square16, 'BackgroundColor');
square17Color = get(handles.square17, 'BackgroundColor');
square18Color = get(handles.square18, 'BackgroundColor');
square19Color = get(handles.square19, 'BackgroundColor');
square20Color = get(handles.square20, 'BackgroundColor');
square21Color = get(handles.square21, 'BackgroundColor');
square22Color = get(handles.square22, 'BackgroundColor');
square23Color = get(handles.square23, 'BackgroundColor');
square24Color = get(handles.square24, 'BackgroundColor');
square25Color = get(handles.square25, 'BackgroundColor');
%---------------------------------------


% --- Outputs from this function are returned to the command line.
function varargout = CodeWords_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in blueTeam.
function blueTeam_Callback(hObject, eventdata, handles)
% hObject    handle to blueTeam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of blueTeam
set(handles.redTeam, 'Value', 0)


% --- Executes on button press in redTeam.
function redTeam_Callback(hObject, eventdata, handles)
% hObject    handle to redTeam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of redTeam
set(handles.blueTeam, 'Value', 0)


% --- Executes on button press in word1.
function word1_Callback(hObject, eventdata, handles)
% hObject    handle to word1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square1Color
set(handles.word1, 'BackgroundColor', square1Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word2.
function word2_Callback(hObject, eventdata, handles)
% hObject    handle to word2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square2Color
set(handles.word2, 'BackgroundColor', square2Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word3.
function word3_Callback(hObject, eventdata, handles)
% hObject    handle to word3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square3Color
set(handles.word3, 'BackgroundColor', square3Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word4.
function word4_Callback(hObject, eventdata, handles)
% hObject    handle to word4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square4Color
set(handles.word4, 'BackgroundColor', square4Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word5.
function word5_Callback(hObject, eventdata, handles)
% hObject    handle to word5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square5Color
set(handles.word5, 'BackgroundColor', square5Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word6.
function word6_Callback(hObject, eventdata, handles)
% hObject    handle to word6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square6Color
set(handles.word6, 'BackgroundColor', square6Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word7.
function word7_Callback(hObject, eventdata, handles)
% hObject    handle to word7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square7Color
set(handles.word7, 'BackgroundColor', square7Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word8.
function word8_Callback(hObject, eventdata, handles)
% hObject    handle to word8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square8Color
set(handles.word8, 'BackgroundColor', square8Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word9.
function word9_Callback(hObject, eventdata, handles)
% hObject    handle to word9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square9Color
set(handles.word9, 'BackgroundColor', square9Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word10.
function word10_Callback(hObject, eventdata, handles)
% hObject    handle to word10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square10Color
set(handles.word10, 'BackgroundColor', square10Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word11.
function word11_Callback(hObject, eventdata, handles)
% hObject    handle to word11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square11Color
set(handles.word11, 'BackgroundColor', square11Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word12.
function word12_Callback(hObject, eventdata, handles)
% hObject    handle to word12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square12Color
set(handles.word12, 'BackgroundColor', square12Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word13.
function word13_Callback(hObject, eventdata, handles)
% hObject    handle to word13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square13Color
set(handles.word13, 'BackgroundColor', square13Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word14.
function word14_Callback(hObject, eventdata, handles)
% hObject    handle to word14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square14Color
set(handles.word14, 'BackgroundColor', square14Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word15.
function word15_Callback(hObject, eventdata, handles)
% hObject    handle to word15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square15Color
set(handles.word15, 'BackgroundColor', square15Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word16.
function word16_Callback(hObject, eventdata, handles)
% hObject    handle to word16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square16Color
set(handles.word16, 'BackgroundColor', square16Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word17.
function word17_Callback(hObject, eventdata, handles)
% hObject    handle to word17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square17Color
set(handles.word17, 'BackgroundColor', square17Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word18.
function word18_Callback(hObject, eventdata, handles)
% hObject    handle to word18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square18Color
set(handles.word18, 'BackgroundColor', square18Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word19.
function word19_Callback(hObject, eventdata, handles)
% hObject    handle to word19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square19Color
set(handles.word19, 'BackgroundColor', square19Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word20.
function word20_Callback(hObject, eventdata, handles)
% hObject    handle to word20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square20Color
set(handles.word20, 'BackgroundColor', square20Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word21.
function word21_Callback(hObject, eventdata, handles)
% hObject    handle to word21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square21Color
set(handles.word21, 'BackgroundColor', square21Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word22.
function word22_Callback(hObject, eventdata, handles)
% hObject    handle to word22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square22Color
set(handles.word22, 'BackgroundColor', square22Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word23.
function word23_Callback(hObject, eventdata, handles)
% hObject    handle to word23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square23Color
set(handles.word23, 'BackgroundColor', square23Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word24.
function word24_Callback(hObject, eventdata, handles)
% hObject    handle to word24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square24Color
set(handles.word24, 'BackgroundColor', square24Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in word25.
function word25_Callback(hObject, eventdata, handles)
% hObject    handle to word25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%CHANGE WORD COLOR
global square25Color
set(handles.word25, 'BackgroundColor', square25Color);
squareColor = get(hObject, 'BackgroundColor');
%---------------------------------------

%GATHER INFO
global numBlue
global numRed
global blueCount
global redCount
global blackWord

if squareColor == [.5 .9 1]
    numBlue = numBlue + 1;
    blueCount = num2str(numBlue);
    blueCount = blueCount + "/9";
    set(handles.blueScore, 'String', blueCount);
elseif squareColor == [1 .4 .4]
    numRed = numRed +1;
    redCount = num2str(numRed);
    redCount = redCount + "/8";
    set(handles.redScore, 'String', redCount);
elseif squareColor == [0 0 0]
    blackWord = "true";
end
turnBlue = get(handles.blueTeam, 'Value');
turnRed = get(handles.redTeam, 'Value');
if turnBlue == 1
    turn = "blue";
elseif turnRed == 1
    turn = "red";
end
%---------------------------------------

%CHECK WINNER
result = checkWinner(turn, numBlue, numRed, blackWord);

if result == "blueWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
elseif result == "redWins"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "blueLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "RED TEAM WINS!");
elseif result == "redLoses"
    set(handles.winnerBox, 'InnerPosition', [7 18 108 4]);
    set(handles.winnerBox, 'String', "BLUE TEAM WINS!");
end
%---------------------------------------


% --- Executes on button press in showHideAnswers.
function showHideAnswers_Callback(hObject, eventdata, handles)
% hObject    handle to showHideAnswers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of showHideAnswers

global square1Color;
global square2Color;
global square3Color;
global square4Color;
global square5Color;
global square6Color;
global square7Color;
global square8Color;
global square9Color;
global square10Color;
global square11Color;
global square12Color;
global square13Color;
global square14Color;
global square15Color;
global square16Color;
global square17Color;
global square18Color;
global square19Color;
global square20Color;
global square21Color;
global square22Color;
global square23Color;
global square24Color;
global square25Color;

if get(hObject, 'Value') == 1
    set(handles.square1, 'BackgroundColor', [1 1 1]);
    set(handles.square2, 'BackgroundColor', [1 1 1]);
    set(handles.square3, 'BackgroundColor', [1 1 1]);
    set(handles.square4, 'BackgroundColor', [1 1 1]);
    set(handles.square5, 'BackgroundColor', [1 1 1]);
    set(handles.square6, 'BackgroundColor', [1 1 1]);
    set(handles.square7, 'BackgroundColor', [1 1 1]);
    set(handles.square8, 'BackgroundColor', [1 1 1]);
    set(handles.square9, 'BackgroundColor', [1 1 1]);
    set(handles.square10, 'BackgroundColor', [1 1 1]);
    set(handles.square11, 'BackgroundColor', [1 1 1]);
    set(handles.square12, 'BackgroundColor', [1 1 1]);
    set(handles.square13, 'BackgroundColor', [1 1 1]);
    set(handles.square14, 'BackgroundColor', [1 1 1]);
    set(handles.square15, 'BackgroundColor', [1 1 1]);
    set(handles.square16, 'BackgroundColor', [1 1 1]);
    set(handles.square17, 'BackgroundColor', [1 1 1]);
    set(handles.square18, 'BackgroundColor', [1 1 1]);
    set(handles.square19, 'BackgroundColor', [1 1 1]);
    set(handles.square20, 'BackgroundColor', [1 1 1]);
    set(handles.square21, 'BackgroundColor', [1 1 1]);
    set(handles.square22, 'BackgroundColor', [1 1 1]);
    set(handles.square23, 'BackgroundColor', [1 1 1]);
    set(handles.square24, 'BackgroundColor', [1 1 1]);
    set(handles.square25, 'BackgroundColor', [1 1 1]);
end

if get(hObject, 'Value') == 0
    set(handles.square1, 'BackgroundColor', square1Color);
    set(handles.square2, 'BackgroundColor', square2Color);
    set(handles.square3, 'BackgroundColor', square3Color);
    set(handles.square4, 'BackgroundColor', square4Color);
    set(handles.square5, 'BackgroundColor', square5Color);
    set(handles.square6, 'BackgroundColor', square6Color);
    set(handles.square7, 'BackgroundColor', square7Color);
    set(handles.square8, 'BackgroundColor', square8Color);
    set(handles.square9, 'BackgroundColor', square9Color);
    set(handles.square10, 'BackgroundColor', square10Color);
    set(handles.square11, 'BackgroundColor', square11Color);
    set(handles.square12, 'BackgroundColor', square12Color);
    set(handles.square13, 'BackgroundColor', square13Color);
    set(handles.square14, 'BackgroundColor', square14Color);
    set(handles.square15, 'BackgroundColor', square15Color);
    set(handles.square16, 'BackgroundColor', square16Color);
    set(handles.square17, 'BackgroundColor', square17Color);
    set(handles.square18, 'BackgroundColor', square18Color);
    set(handles.square19, 'BackgroundColor', square19Color);
    set(handles.square20, 'BackgroundColor', square20Color);
    set(handles.square21, 'BackgroundColor', square21Color);
    set(handles.square22, 'BackgroundColor', square22Color);
    set(handles.square23, 'BackgroundColor', square23Color);
    set(handles.square24, 'BackgroundColor', square24Color);
    set(handles.square25, 'BackgroundColor', square25Color);
end


% --- Executes on button press in square1.
function square1_Callback(hObject, eventdata, handles)
% hObject    handle to square1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square2.
function square2_Callback(hObject, eventdata, handles)
% hObject    handle to square2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square3.
function square3_Callback(hObject, eventdata, handles)
% hObject    handle to square3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square4.
function square4_Callback(hObject, eventdata, handles)
% hObject    handle to square4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square5.
function square5_Callback(hObject, eventdata, handles)
% hObject    handle to square5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square6.
function square6_Callback(hObject, eventdata, handles)
% hObject    handle to square6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square7.
function square7_Callback(hObject, eventdata, handles)
% hObject    handle to square7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square8.
function square8_Callback(hObject, eventdata, handles)
% hObject    handle to square8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square9.
function square9_Callback(hObject, eventdata, handles)
% hObject    handle to square9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square10.
function square10_Callback(hObject, eventdata, handles)
% hObject    handle to square10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square11.
function square11_Callback(hObject, eventdata, handles)
% hObject    handle to square11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square12.
function square12_Callback(hObject, eventdata, handles)
% hObject    handle to square12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square13.
function square13_Callback(hObject, eventdata, handles)
% hObject    handle to square13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square14.
function square14_Callback(hObject, eventdata, handles)
% hObject    handle to square14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square15.
function square15_Callback(hObject, eventdata, handles)
% hObject    handle to square15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square16.
function square16_Callback(hObject, eventdata, handles)
% hObject    handle to square16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square17.
function square17_Callback(hObject, eventdata, handles)
% hObject    handle to square17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square18.
function square18_Callback(hObject, eventdata, handles)
% hObject    handle to square18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square19.
function square19_Callback(hObject, eventdata, handles)
% hObject    handle to square19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square20.
function square20_Callback(hObject, eventdata, handles)
% hObject    handle to square20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square21.
function square21_Callback(hObject, eventdata, handles)
% hObject    handle to square21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square22.
function square22_Callback(hObject, eventdata, handles)
% hObject    handle to square22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square23.
function square23_Callback(hObject, eventdata, handles)
% hObject    handle to square23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square24.
function square24_Callback(hObject, eventdata, handles)
% hObject    handle to square24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in square25.
function square25_Callback(hObject, eventdata, handles)
% hObject    handle to square25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in wordBankCategory.
function wordBankCategory_Callback(hObject, eventdata, handles)
% hObject    handle to wordBankCategory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns wordBankCategory contents as cell array
%        contents{get(hObject,'Value')} returns selected item from wordBankCategory

global numBlue
global numRed
global blackWord
global blueCount
global redCount
global generalWordBank
global starWarsWordBank
global disneyWordBank
wordBank = get(handles.wordBankCategory, 'Value');

%RESET GAME
blackWord = 'false';
numBlue = 0;
numRed = 0;
blueCount = 0;
redCount = 0;
set(handles.blueScore, 'String', "0/9");
set(handles.redScore, 'String', "0/8");
set(handles.winnerBox, 'InnerPosition', [80 39 4 2]);
set(handles.winnerBox, 'String', "");

set(handles.word1, 'BackgroundColor', [1 .95 .8]);
set(handles.word2, 'BackgroundColor', [1 .95 .8]);
set(handles.word3, 'BackgroundColor', [1 .95 .8]);
set(handles.word4, 'BackgroundColor', [1 .95 .8]);
set(handles.word5, 'BackgroundColor', [1 .95 .8]);
set(handles.word6, 'BackgroundColor', [1 .95 .8]);
set(handles.word7, 'BackgroundColor', [1 .95 .8]);
set(handles.word8, 'BackgroundColor', [1 .95 .8]);
set(handles.word9, 'BackgroundColor', [1 .95 .8]);
set(handles.word10, 'BackgroundColor', [1 .95 .8]);
set(handles.word11, 'BackgroundColor', [1 .95 .8]);
set(handles.word12, 'BackgroundColor', [1 .95 .8]);
set(handles.word13, 'BackgroundColor', [1 .95 .8]);
set(handles.word14, 'BackgroundColor', [1 .95 .8]);
set(handles.word15, 'BackgroundColor', [1 .95 .8]);
set(handles.word16, 'BackgroundColor', [1 .95 .8]);
set(handles.word17, 'BackgroundColor', [1 .95 .8]);
set(handles.word18, 'BackgroundColor', [1 .95 .8]);
set(handles.word19, 'BackgroundColor', [1 .95 .8]);
set(handles.word20, 'BackgroundColor', [1 .95 .8]);
set(handles.word21, 'BackgroundColor', [1 .95 .8]);
set(handles.word22, 'BackgroundColor', [1 .95 .8]);
set(handles.word23, 'BackgroundColor', [1 .95 .8]);
set(handles.word24, 'BackgroundColor', [1 .95 .8]);
set(handles.word25, 'BackgroundColor', [1 .95 .8]);
%---------------------------------------

%REASSOCIATE WORD GRID WITH TEAMS
blue = ".5 .9 1";
red = "1 .4 .4";
black = "0 0 0";
neutral = ".8 .5 0";
colors = [blue, red, black, neutral];
A = randperm(25);

for i = 1:1:9
    colorOptions(A(i)) = colors(1);  
end

for i = 10:1:17
    colorOptions(A(i)) = colors(2);
end

colorOptions(A(18)) = colors(3);

for i = 19:1:25
    colorOptions(A(i)) = colors(4);
end

set(handles.square1, 'BackgroundColor', [colorOptions(1)]);
set(handles.square2, 'BackgroundColor', [colorOptions(2)]);
set(handles.square3, 'BackgroundColor', [colorOptions(3)]);
set(handles.square4, 'BackgroundColor', [colorOptions(4)]);
set(handles.square5, 'BackgroundColor', [colorOptions(5)]);
set(handles.square6, 'BackgroundColor', [colorOptions(6)]);
set(handles.square7, 'BackgroundColor', [colorOptions(7)]);
set(handles.square8, 'BackgroundColor', [colorOptions(8)]);
set(handles.square9, 'BackgroundColor', [colorOptions(9)]);
set(handles.square10, 'BackgroundColor', [colorOptions(10)]);
set(handles.square11, 'BackgroundColor', [colorOptions(11)]);
set(handles.square12, 'BackgroundColor', [colorOptions(12)]);
set(handles.square13, 'BackgroundColor', [colorOptions(13)]);
set(handles.square14, 'BackgroundColor', [colorOptions(14)]);
set(handles.square15, 'BackgroundColor', [colorOptions(15)]);
set(handles.square16, 'BackgroundColor', [colorOptions(16)]);
set(handles.square17, 'BackgroundColor', [colorOptions(17)]);
set(handles.square18, 'BackgroundColor', [colorOptions(18)]);
set(handles.square19, 'BackgroundColor', [colorOptions(19)]);
set(handles.square20, 'BackgroundColor', [colorOptions(20)]);
set(handles.square21, 'BackgroundColor', [colorOptions(21)]);
set(handles.square22, 'BackgroundColor', [colorOptions(22)]);
set(handles.square23, 'BackgroundColor', [colorOptions(23)]);
set(handles.square24, 'BackgroundColor', [colorOptions(24)]);
set(handles.square25, 'BackgroundColor', [colorOptions(25)]);

global square1Color;
global square2Color;
global square3Color;
global square4Color;
global square5Color;
global square6Color;
global square7Color;
global square8Color;
global square9Color;
global square10Color;
global square11Color;
global square12Color;
global square13Color;
global square14Color;
global square15Color;
global square16Color;
global square17Color;
global square18Color;
global square19Color;
global square20Color;
global square21Color;
global square22Color;
global square23Color;
global square24Color;
global square25Color;

square1Color = get(handles.square1, 'BackgroundColor');
square2Color = get(handles.square2, 'BackgroundColor');
square3Color = get(handles.square3, 'BackgroundColor');
square4Color = get(handles.square4, 'BackgroundColor');
square5Color = get(handles.square5, 'BackgroundColor');
square6Color = get(handles.square6, 'BackgroundColor');
square7Color = get(handles.square7, 'BackgroundColor');
square8Color = get(handles.square8, 'BackgroundColor');
square9Color = get(handles.square9, 'BackgroundColor');
square10Color = get(handles.square10, 'BackgroundColor');
square11Color = get(handles.square11, 'BackgroundColor');
square12Color = get(handles.square12, 'BackgroundColor');
square13Color = get(handles.square13, 'BackgroundColor');
square14Color = get(handles.square14, 'BackgroundColor');
square15Color = get(handles.square15, 'BackgroundColor');
square16Color = get(handles.square16, 'BackgroundColor');
square17Color = get(handles.square17, 'BackgroundColor');
square18Color = get(handles.square18, 'BackgroundColor');
square19Color = get(handles.square19, 'BackgroundColor');
square20Color = get(handles.square20, 'BackgroundColor');
square21Color = get(handles.square21, 'BackgroundColor');
square22Color = get(handles.square22, 'BackgroundColor');
square23Color = get(handles.square23, 'BackgroundColor');
square24Color = get(handles.square24, 'BackgroundColor');
square25Color = get(handles.square25, 'BackgroundColor');
%---------------------------------------

%CHANGE TEAM NAMES
if(wordBank == 1)
    set(handles.blueTeam, 'String', 'Blue Team');
    set(handles.redTeam, 'String', 'Red Team');
elseif(wordBank == 2)
    set(handles.blueTeam, 'String', 'The Rebellion');
    set(handles.redTeam, 'String', 'The Empire');
elseif(wordBank ==3)
    set(handles.blueTeam, 'String', 'Blue Team');
    set(handles.redTeam, 'String', 'Red Team');
end
%---------------------------------------

%CHANGE WORD GRID BASED ON GAME CATEGORY
if(wordBank == 1)
    num = randperm(size(generalWordBank, 2));
    set(handles.word1, 'String', generalWordBank(num(1)));
    set(handles.word2, 'String', generalWordBank(num(2)));
    set(handles.word3, 'String', generalWordBank(num(3)));
    set(handles.word4, 'String', generalWordBank(num(4)));
    set(handles.word5, 'String', generalWordBank(num(5)));
    set(handles.word6, 'String', generalWordBank(num(6)));
    set(handles.word7, 'String', generalWordBank(num(7)));
    set(handles.word8, 'String', generalWordBank(num(8)));
    set(handles.word9, 'String', generalWordBank(num(9)));
    set(handles.word10, 'String', generalWordBank(num(10)));
    set(handles.word11, 'String', generalWordBank(num(11)));
    set(handles.word12, 'String', generalWordBank(num(12)));
    set(handles.word13, 'String', generalWordBank(num(13)));
    set(handles.word14, 'String', generalWordBank(num(14)));
    set(handles.word15, 'String', generalWordBank(num(15)));
    set(handles.word16, 'String', generalWordBank(num(16)));
    set(handles.word17, 'String', generalWordBank(num(17)));
    set(handles.word18, 'String', generalWordBank(num(18)));
    set(handles.word19, 'String', generalWordBank(num(19)));
    set(handles.word20, 'String', generalWordBank(num(20)));
    set(handles.word21, 'String', generalWordBank(num(21)));
    set(handles.word22, 'String', generalWordBank(num(22)));
    set(handles.word23, 'String', generalWordBank(num(23)));
    set(handles.word24, 'String', generalWordBank(num(24)));
    set(handles.word25, 'String', generalWordBank(num(25)));
elseif(wordBank == 2)
    num = randperm(size(starWarsWordBank, 2));
    set(handles.word1, 'String', starWarsWordBank(num(1)));
    set(handles.word2, 'String', starWarsWordBank(num(2)));
    set(handles.word3, 'String', starWarsWordBank(num(3)));
    set(handles.word4, 'String', starWarsWordBank(num(4)));
    set(handles.word5, 'String', starWarsWordBank(num(5)));
    set(handles.word6, 'String', starWarsWordBank(num(6)));
    set(handles.word7, 'String', starWarsWordBank(num(7)));
    set(handles.word8, 'String', starWarsWordBank(num(8)));
    set(handles.word9, 'String', starWarsWordBank(num(9)));
    set(handles.word10, 'String', starWarsWordBank(num(10)));
    set(handles.word11, 'String', starWarsWordBank(num(11)));
    set(handles.word12, 'String', starWarsWordBank(num(12)));
    set(handles.word13, 'String', starWarsWordBank(num(13)));
    set(handles.word14, 'String', starWarsWordBank(num(14)));
    set(handles.word15, 'String', starWarsWordBank(num(15)));
    set(handles.word16, 'String', starWarsWordBank(num(16)));
    set(handles.word17, 'String', starWarsWordBank(num(17)));
    set(handles.word18, 'String', starWarsWordBank(num(18)));
    set(handles.word19, 'String', starWarsWordBank(num(19)));
    set(handles.word20, 'String', starWarsWordBank(num(20)));
    set(handles.word21, 'String', starWarsWordBank(num(21)));
    set(handles.word22, 'String', starWarsWordBank(num(22)));
    set(handles.word23, 'String', starWarsWordBank(num(23)));
    set(handles.word24, 'String', starWarsWordBank(num(24)));
    set(handles.word25, 'String', starWarsWordBank(num(25)));
elseif(wordBank == 3)
    num = randperm(size(disneyWordBank, 2));
    set(handles.word1, 'String', disneyWordBank(num(1)));
    set(handles.word2, 'String', disneyWordBank(num(2)));
    set(handles.word3, 'String', disneyWordBank(num(3)));
    set(handles.word4, 'String', disneyWordBank(num(4)));
    set(handles.word5, 'String', disneyWordBank(num(5)));
    set(handles.word6, 'String', disneyWordBank(num(6)));
    set(handles.word7, 'String', disneyWordBank(num(7)));
    set(handles.word8, 'String', disneyWordBank(num(8)));
    set(handles.word9, 'String', disneyWordBank(num(9)));
    set(handles.word10, 'String', disneyWordBank(num(10)));
    set(handles.word11, 'String', disneyWordBank(num(11)));
    set(handles.word12, 'String', disneyWordBank(num(12)));
    set(handles.word13, 'String', disneyWordBank(num(13)));
    set(handles.word14, 'String', disneyWordBank(num(14)));
    set(handles.word15, 'String', disneyWordBank(num(15)));
    set(handles.word16, 'String', disneyWordBank(num(16)));
    set(handles.word17, 'String', disneyWordBank(num(17)));
    set(handles.word18, 'String', disneyWordBank(num(18)));
    set(handles.word19, 'String', disneyWordBank(num(19)));
    set(handles.word20, 'String', disneyWordBank(num(20)));
    set(handles.word21, 'String', disneyWordBank(num(21)));
    set(handles.word22, 'String', disneyWordBank(num(22)));
    set(handles.word23, 'String', disneyWordBank(num(23)));
    set(handles.word24, 'String', disneyWordBank(num(24)));
    set(handles.word25, 'String', disneyWordBank(num(25)));
end
%---------------------------------------


% --- Executes during object creation, after setting all properties.
function wordBankCategory_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wordBankCategory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

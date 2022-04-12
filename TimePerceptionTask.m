clc %clears the command window
clear %clears variables


%Dialog box --------------------------------------------------------

prompt = {'Name' , 'Family name', 'Age', 'FirstTrial(ms)', 'SecondTrial(ms)', 'ThirdTrial(ms)', 'FourthTrial(ms)'};
answer = inputdlg (prompt);
    
a=answer{1};
T{1,1}=a;

b=answer{2};
T{1,2}=b;

c=answer{3};
T{1,3}=c;

d = str2double (answer {4});
T{1,4}=d;

e = str2double (answer {5});
T{1,5}=e;

f = str2double (answer {6});
T{1,6}=f;

g= str2double (answer {7});   
T{1,7}=g;

Table_Demo = cell2table(T,'VariableNames',{'Name' 'FamilyName' 'Age' 'FirstTrial' 'SecondTrial' 'ThirdTrial' 'FourthTrial'}); %insert data and variables in a table



% Start cogent----------------------------------------------------------
clc %clears the command window

config_display(1, 3)
config_keyboard
config_sound

start_cogent;

% Time reproduction ----------------------------------------------

cgpencol(1,1,1)%sets the drawing colour to maximum white
cgfont('Arial', 30) %sets the font and the font size
cgtext('Time reproduction test',0,0); %draws the given text at the point x,y 
cgfont('Arial', 30) %sets the font and the font size
cgtext('Press Enter to begin',0,-150); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,59); %waits an infinite time for the Enter (key ID=59) to be pressed

cgpencol(1,1,1) %change the text
cgfont('Arial', 30)%sets the font and the font size
cgtext('Press and hold the space bar equal to the duration of the sound you hear',0,25); %draws the given text at the point x,y
cgfont('Arial', 30) %sets the font and the font size
cgtext('Press Enter to continue.',0,-150); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,59); %waits an infinite time for the Enter (key ID=59) to be pressed
wait(2000); %waits for f ms

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%Repeat=1;
%Trial 1; d ms
preparepuretone(500,d,1); %fills buffer 1 with a 500 Hz sine wave sound lasting d milliseconds
playsound (1);%plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing
cgtext('Press space equal to the sound you hear',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_d=time; %sets t0_d=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_d=time; %sets t1_d=current time (relative to start_cogent)
Response_d=t1_d-t0_d; %calculate the duration the space bar was pressed and hold
Deviation_d=Response_d-d; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for f ms
C{1,1}=1; %sets Trial[1,1]=1                                                                              q                          
C{1,2}=d; %sets Target time[1,2]=d 
C{1,3}=Response_d; %sets response time[1,3]=Response_d
C{1,4}=Deviation_d; %sets deviation time[1,4]=Deviation_d
C{1,5}=1; %sets Repeat [1,5]=1

%Trial 2; e ms
preparepuretone(500,e,1); %fills buffer 1 with a 500 Hz sine wave sound lasting e milliseconds
playsound(1); %plays the sound in buffer 1
waitsound(1); % Waits for the sound in buffer 1 to finish playing
cgtext('Press space equal to the sound you hear',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_e=time; %sets t0_e=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_e=time; %sets t1_e=current time (relative to start_cogent)
Response_e=t1_e-t0_e; %calculate the duration the space bar was pressed and hold
Deviation_e=Response_e-e; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for f ms
C{2,1}=2; %sets Trial[2,1]=2
C{2,2}=e; %sets Target time[2,2]=e
C{2,3}=Response_e; %sets response time[2,3]=Response_e
C{2,4}=Deviation_e; %sets deviation time[2,4]=Deviation_e
C{2,5}=1; %sets Repeat [2,5]=1

%Trial 3; f ms
preparepuretone(500,f,1); %fills buffer 1 with a 500 Hz sine wave sound lasting f milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
cgtext('Press space equal to the sound you hear',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_f=time; %sets t0_f=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_f=time; %sets t1_f=current time (relative to start_cogent)
Response_f=t1_f-t0_f; %calculate the duration the space bar was pressed and hold
Deviation_f=Response_f-f; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for f ms
C{3,1}=3;%sets Trial[3,1]=3
C{3,2}=f; %sets Target time[3,2]=f
C{3,3}=Response_f; %sets response time[3,3]=Response_f
C{3,4}=Deviation_f; %sets deviation time[3,4]=Deviation_f
C{3,5}=1; %sets Repeat [2,5]=1

%Trial 4; g ms
preparepuretone(500,g,1); %fills buffer 1 with a 500 Hz sine wave sound lasting g milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
cgtext('Press space equal to the sound you hear',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_g=time; %sets t0_f=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_g=time; %sets t1_f=current time (relative to start_cogent)
Response_g=t1_g-t0_g; %calculate the duration the space bar was pressed and hold
Deviation_g=Response_g-g; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for f ms
C{4,1}=4;%sets Trial[4,1]=3
C{4,2}=g; %sets Target time[4,2]=g
C{4,3}=Response_g; %sets response time[4,3]=Response_g
C{4,4}=Deviation_g; %sets deviation time[4,4]=Deviation_g
C{4,5}=1; %sets Repeat [4,5]=1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Repeat=2;
%Trial 1; d ms
preparepuretone(500,d,1); %fills buffer 1 with a 500 Hz sine wave sound lasting d milliseconds
playsound (1);%plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing
cgtext('Press space equal to the sound you hear',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_d=time; %sets t0_d=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_d=time; %sets t1_d=current time (relative to start_cogent)
Response_d=t1_d-t0_d; %calculate the duration the space bar was pressed and hold
Deviation_d=Response_d-d; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for f ms
C{5,1}=1; %sets Trial[5,1]=1                                                                              q                          
C{5,2}=d; %sets Target time[5,2]=d 
C{5,3}=Response_d; %sets response time[5,3]=Response_d
C{5,4}=Deviation_d; %sets deviation time[5,4]=Deviation_d
C{5,5}=2; %sets Repeat [4,5]=2

%Trial 2; e ms
preparepuretone(500,e,1); %fills buffer 1 with a 500 Hz sine wave sound lasting e milliseconds
playsound(1); %plays the sound in buffer 1
waitsound(1); % Waits for the sound in buffer 1 to finish playing
cgtext('Press space equal to the sound you hear',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_e=time; %sets t0_e=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_e=time; %sets t1_e=current time (relative to start_cogent)
Response_e=t1_e-t0_e; %calculate the duration the space bar was pressed and hold
Deviation_e=Response_e-e; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for f ms
C{6,1}=2; %sets Trial[6,1]=2
C{6,2}=e; %sets Target time[6,2]=e
C{6,3}=Response_e; %sets response time[6,3]=Response_e
C{6,4}=Deviation_e; %sets deviation time[6,4]=Deviation_e
C{6,5}=2; %sets Repeat [6,5]=2

%Trial 3; f ms
preparepuretone(500,f,1); %fills buffer 1 with a 500 Hz sine wave sound lasting f milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
cgtext('Press space equal to the sound you hear',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_f=time; %sets t0_f=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_f=time; %sets t1_f=current time (relative to start_cogent)
Response_f=t1_f-t0_f; %calculate the duration the space bar was pressed and hold
Deviation_f=Response_f-f; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for f ms
C{7,1}=3;%sets Trial[7,1]=3
C{7,2}=f; %sets Target time[7,2]=f
C{7,3}=Response_f; %sets response time[7,3]=Response_f
C{7,4}=Deviation_f; %sets deviation time[7,4]=Deviation_f
C{7,5}=2; %sets Repeat [7,5]=2

%Trial 4; g ms
preparepuretone(500,g,1); %fills buffer 1 with a 500 Hz sine wave sound lasting g milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
cgtext('Press space equal to the sound you hear',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_g=time; %sets t0_f=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_g=time; %sets t1_f=current time (relative to start_cogent)
Response_g=t1_g-t0_g; %calculate the duration the space bar was pressed and hold
Deviation_g=Response_g-g; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for f ms
C{8,1}=4;%sets Trial[8,1]=3
C{8,2}=g; %sets Target time[8,2]=g
C{8,3}=Response_g; %sets response time[8,3]=Response_g
C{8,4}=Deviation_g; %sets deviation time[8,4]=Deviation_g
C{8,5}=2; %sets Repeat [8,5]=2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Repeat=3;
%Trial 1; d ms
preparepuretone(500,d,1); %fills buffer 1 with a 500 Hz sine wave sound lasting d milliseconds
playsound (1);%plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing
cgtext('Press space equal to the sound you hear',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_d=time; %sets t0_d=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_d=time; %sets t1_d=current time (relative to start_cogent)
Response_d=t1_d-t0_d; %calculate the duration the space bar was pressed and hold
Deviation_d=Response_d-d; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for f ms
C{9,1}=1; %sets Trial[9,1]=1                                                                              q                          
C{9,2}=d; %sets Target time[9,2]=d 
C{9,3}=Response_d; %sets response time[9,3]=Response_d
C{9,4}=Deviation_d; %sets deviation time[9,4]=Deviation_d
C{9,5}=3; %sets Repeat [9,5]=3

%Trial 2; e ms
preparepuretone(500,e,1); %fills buffer 1 with a 500 Hz sine wave sound lasting e milliseconds
playsound(1); %plays the sound in buffer 1
waitsound(1); % Waits for the sound in buffer 1 to finish playing
cgtext('Press space equal to the sound you hear',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_e=time; %sets t0_e=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_e=time; %sets t1_e=current time (relative to start_cogent)
Response_e=t1_e-t0_e; %calculate the duration the space bar was pressed and hold
Deviation_e=Response_e-e; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for f ms
C{10,1}=2; %sets Trial[10,1]=2
C{10,2}=e; %sets Target time[10,2]=e
C{10,3}=Response_e; %sets response time[10,3]=Response_e
C{10,4}=Deviation_e; %sets deviation time[10,4]=Deviation_e
C{10,5}=3; %sets Repeat [10,5]=3

%Trial 3; f ms
preparepuretone(500,f,1); %fills buffer 1 with a 500 Hz sine wave sound lasting f milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
cgtext('Press space equal to the sound you hear',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_f=time; %sets t0_f=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_f=time; %sets t1_f=current time (relative to start_cogent)
Response_f=t1_f-t0_f; %calculate the duration the space bar was pressed and hold
Deviation_f=Response_f-f; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for f ms
C{11,1}=3;%sets Trial[11,1]=3
C{11,2}=f; %sets Target time[11,2]=f
C{11,3}=Response_f; %sets response time[11,3]=Response_f
C{11,4}=Deviation_f; %sets deviation time[11,4]=Deviation_f
C{11,5}=3; %sets Repeat [11,5]=3

%Trial 4; g ms
preparepuretone(500,g,1); %fills buffer 1 with a 500 Hz sine wave sound lasting g milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
cgtext('Press space equal to the sound you hear',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_g=time; %sets t0_f=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_g=time; %sets t1_f=current time (relative to start_cogent)
Response_g=t1_g-t0_g; %calculate the duration the space bar was pressed and hold
Deviation_g=Response_g-g; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for f ms
C{12,1}=4;%sets Trial[12,1]=3
C{12,2}=g; %sets Target time[12,2]=g
C{12,3}=Response_g; %sets response time[12,3]=Response_g
C{12,4}=Deviation_g; %sets deviation time[12,4]=Deviation_g
C{12,5}=3; %sets Repeat [12,5]=3

Table_reproduction = cell2table(C,'VariableNames',{'Trial' 'Target' 'Response' 'Deviation' 'Repeat'}); %insert data and variables in a table



% Time Production --------------------------------------------------------

cgpencol(1,1,1) %sets the drawing colour to maximum white
cgfont('Arial', 30)%sets the font and the font size
cgtext('Time production test',0,25); %draws the given text at the point x,y
cgtext('Press and hold space bar equal to the time you see',0,-25); %draws the given text at the point x,y
cgfont('Arial', 20)%sets the font and the font size
cgtext('Press enter to continue',0,-95); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,59); %waits an infinite time for the Enter (key ID=59) to be pressed

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Repeat=1;
%Trial 1; d ms
cgpencol(1,1,1) %sets the drawing colour to maximum white
cgfont('Arial', 30)%sets the font and the font size
cgtext('10 seconds',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_d_production=time; %sets t0_d_production=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_d_production=time; %sets t1_d_production=current time (relative to start_cogent)
Response_d_production=t1_d_production-t0_d_production; %calculate the duration the space bar was pressed and hold
Deviation_d_production=Response_d_production-d; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for 2000 ms
C{1,1}=1; %sets Trial[1,1]=1
C{1,2}=d; %sets Target time[1,2]=d
C{1,3}=Response_d_production; %sets response time[1,3]=Response_d_production
C{1,4}=Deviation_d_production; %sets deviation time[1,4]=Deviation_d_production
C{1,5}=1; %sets Repeat [1,5]=1

%Trial 2; e ms
cgpencol(1,1,1) %sets the drawing colour to maximum white
cgfont('Arial', 30)%sets the font and the font size
cgtext('30 seconds',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen blackwaitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_e_production=time; %sets t0_e_production=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_e_production=time; %sets t1_e_production=current time (relative to start_cogent)
Response_e_production=t1_e_production-t0_e_production; %calculate the duration the space bar was pressed and hold
Deviation_e_production=Response_e_production-e; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for 2000 ms
C{2,1}=2; %sets Trial[2,1]=2
C{2,2}=e; %sets Target time[2,2]=e
C{2,3}=Response_e_production; %sets response time[2,3]=Response_e_production
C{2,4}=Deviation_e_production; %sets deviation time[2,4]=Deviation_e_production
C{2,5}=1; %sets Repeat [2,5]=1

%Trial 3; f ms
cgpencol(1,1,1) %sets the drawing colour to maximum white
cgfont('Arial', 30)%sets the font and the font size
cgtext('60 seconds',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_f_production=time; %sets t0_f_production=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_f_production=time; %sets t1_f_production=current time (relative to start_cogent)
Response_f_production=t1_f_production-t0_f_production; %calculate the duration the space bar was pressed and hold
Deviation_f_production=Response_f_production-f; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for 2000 ms
C{3,1}=3; %sets Trial[3,1]=3
C{3,2}=f; %sets Target time[3,2]=f
C{3,3}=Response_f_production; %sets response time[3,3]=Response_f_production
C{3,4}=Deviation_f_production; %sets deviation time[3,4]=Deviation_f_production
C{3,5}=1; %sets Repeat [3,5]=1

%Trial 4; g ms
cgpencol(1,1,1) %sets the drawing colour to maximum white
cgfont('Arial', 30)%sets the font and the font size
cgtext('90 seconds',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an inginite time gor the Space (key ID=71) to be pressed
t0_g_production=time; %sets t0_g_production=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an inginite time gor the Space (key ID=71) to be released
t1_g_production=time; %sets t1_g_production=current time (relative to start_cogent)
Response_g_production=t1_g_production-t0_g_production; %calculate the duration the space bar was pressed and hold
Deviation_g_production=Response_g_production-g; %calculate the time diggerence between the expected duration and the key holding time
wait (2000); %waits gor 2000 ms
C{4,1}=4; %sets Trial[4,1]=4
C{4,2}=g; %sets Target time[4,2]=g
C{4,3}=Response_g_production; %sets response time[4,3]=Response_g_production
C{4,4}=Deviation_g_production; %sets deviation time[4,4]=Deviation_g_production
C{4,5}=1; %sets Repeat [4,5]=1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Repeat=2;
%Trial 1; d ms
cgpencol(1,1,1) %sets the drawing colour to maximum white
cgfont('Arial', 30)%sets the font and the font size
cgtext('10 seconds',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_d_production=time; %sets t0_d_production=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_d_production=time; %sets t1_d_production=current time (relative to start_cogent)
Response_d_production=t1_d_production-t0_d_production; %calculate the duration the space bar was pressed and hold
Deviation_d_production=Response_d_production-d; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for 2000 ms
C{5,1}=1; %sets Trial[5,1]=1
C{5,2}=d; %sets Target time[5,2]=d
C{5,3}=Response_d_production; %sets response time[5,3]=Response_d_production
C{5,4}=Deviation_d_production; %sets deviation time[5,4]=Deviation_d_production
C{5,5}=2; %sets Repeat [5,5]=2

%Trial 2; e ms
cgpencol(1,1,1) %sets the drawing colour to maximum white
cgfont('Arial', 30)%sets the font and the font size
cgtext('30 seconds',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_e_production=time; %sets t0_e_production=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_e_production=time; %sets t1_e_production=current time (relative to start_cogent)
Response_e_production=t1_e_production-t0_e_production; %calculate the duration the space bar was pressed and hold
Deviation_e_production=Response_e_production-e; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for 2000 ms
C{6,1}=2; %sets Trial[6,1]=2
C{6,2}=e; %sets Target time[6,2]=e
C{6,3}=Response_e_production; %sets response time[6,3]=Response_e_production
C{6,4}=Deviation_e_production; %sets deviation time[6,4]=Deviation_e_production
C{6,5}=2; %sets Repeat [6,5]=2

%Trial 3; f ms
cgpencol(1,1,1) %sets the drawing colour to maximum white
cgfont('Arial', 30)%sets the font and the font size
cgtext('60 seconds',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_f_production=time; %sets t0_f_production=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_f_production=time; %sets t1_f_production=current time (relative to start_cogent)
Response_f_production=t1_f_production-t0_f_production; %calculate the duration the space bar was pressed and hold
Deviation_f_production=Response_f_production-f; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for 2000 ms
C{7,1}=3; %sets Trial[7,1]=3
C{7,2}=f; %sets Target time[7,2]=f
C{7,3}=Response_f_production; %sets response time[7,3]=Response_f_production
C{7,4}=Deviation_f_production; %sets deviation time[7,4]=Deviation_f_production
C{7,5}=2; %sets Repeat [7,5]=2

%Trial 4; g ms
cgpencol(1,1,1) %sets the drawing colour to maximum white
cgfont('Arial', 30)%sets the font and the font size
cgtext('90 seconds',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an inginite time gor the Space (key ID=71) to be pressed
t0_g_production=time; %sets t0_g_production=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an inginite time gor the Space (key ID=71) to be released
t1_g_production=time; %sets t1_g_production=current time (relative to start_cogent)
Response_g_production=t1_g_production-t0_g_production; %calculate the duration the space bar was pressed and hold
Deviation_g_production=Response_g_production-g; %calculate the time diggerence between the expected duration and the key holding time
wait (2000); %waits gor 2000 ms
C{8,1}=4; %sets Trial[8,1]=4
C{8,2}=g; %sets Target time[8,2]=g
C{8,3}=Response_g_production; %sets response time[8,3]=Response_g_production
C{8,4}=Deviation_g_production; %sets deviation time[8,4]=Deviation_g_production
C{8,5}=2; %sets Repeat [8,5]=2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Repeat=3;
%Trial 1; d ms
cgpencol(1,1,1) %sets the drawing colour to maximum white
cgfont('Arial', 30)%sets the font and the font size
cgtext('10 seconds',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_d_production=time; %sets t0_d_production=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_d_production=time; %sets t1_d_production=current time (relative to start_cogent)
Response_d_production=t1_d_production-t0_d_production; %calculate the duration the space bar was pressed and hold
Deviation_d_production=Response_d_production-d; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for 2000 ms
C{9,1}=1; %sets Trial[9,1]=1
C{9,2}=d; %sets Target time[9,2]=d
C{9,3}=Response_d_production; %sets response time[9,3]=Response_d_production
C{9,4}=Deviation_d_production; %sets deviation time[9,4]=Deviation_d_production
C{9,5}=3; %sets Repeat [9,5]=3

%Trial 2; e ms
cgpencol(1,1,1) %sets the drawing colour to maximum white
cgfont('Arial', 30)%sets the font and the font size
cgtext('30 seconds',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_e_production=time; %sets t0_e_production=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_e_production=time; %sets t1_e_production=current time (relative to start_cogent)
Response_e_production=t1_e_production-t0_e_production; %calculate the duration the space bar was pressed and hold
Deviation_e_production=Response_e_production-e; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for 2000 ms
C{10,1}=2; %sets Trial[10,1]=2
C{10,2}=e; %sets Target time[10,2]=e
C{10,3}=Response_e_production; %sets response time[10,3]=Response_e_production
C{10,4}=Deviation_e_production; %sets deviation time[10,4]=Deviation_e_production
C{10,5}=3; %sets Repeat [10,5]=3

%Trial 3; f ms
cgpencol(1,1,1) %sets the drawing colour to maximum white
cgfont('Arial', 30)%sets the font and the font size
cgtext('60 seconds',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an infinite time for the Space (key ID=71) to be pressed
t0_f_production=time; %sets t0_f_production=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an infinite time for the Space (key ID=71) to be released
t1_f_production=time; %sets t1_f_production=current time (relative to start_cogent)
Response_f_production=t1_f_production-t0_f_production; %calculate the duration the space bar was pressed and hold
Deviation_f_production=Response_f_production-f; %calculate the time difference between the expected duration and the key holding time
wait (2000); %waits for 2000 ms
C{11,1}=3; %sets Trial[11,1]=3
C{11,2}=f; %sets Target time[11,2]=f
C{11,3}=Response_f_production; %sets response time[11,3]=Response_f_production
C{11,4}=Deviation_f_production; %sets deviation time[11,4]=Deviation_f_production
C{11,5}=3; %sets Repeat [11,5]=3

%Trial 4; g ms
cgpencol(1,1,1) %sets the drawing colour to maximum white
cgfont('Arial', 30)%sets the font and the font size
cgtext('90 seconds',0,25); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,71); %waits an inginite time gor the Space (key ID=71) to be pressed
t0_g_production=time; %sets t0_g_production=current time (relative to start_cogent)
waitkeyup(inf,71); %waits an inginite time gor the Space (key ID=71) to be released
t1_g_production=time; %sets t1_g_production=current time (relative to start_cogent)
Response_g_production=t1_g_production-t0_g_production; %calculate the duration the space bar was pressed and hold
Deviation_g_production=Response_g_production-g; %calculate the time diggerence between the expected duration and the key holding time
wait (2000); %waits gor 2000 ms
C{12,1}=4; %sets Trial[12,1]=4
C{12,2}=g; %sets Target time[12,2]=g
C{12,3}=Response_g_production; %sets response time[12,3]=Response_g_production
C{12,4}=Deviation_g_production; %sets deviation time[12,4]=Deviation_g_production
C{12,5}=3; %sets Repeat [12,5]=1

wait(2000); 

Table_production = cell2table(C,'VariableNames',{'Trial' 'Target' 'Response' 'Deviation' 'Repeat'}); %insert data and variables in a table


% Time estimation ----------------------------------------------
cgflip(0,0,0);
cgpencol(1,1,1)%sets the drawing colour to maximum white
cgfont('Arial', 30) %sets the font and the font size
cgtext('Time estimation test',0,0); %draws the given text at the point x,y 
cgfont('Arial', 30) %sets the font and the font size
cgtext('Press Enter to begin',0,-150); %draws the given text at the point x,y
cgflip(0,0,0); %clears the previous screen and makes the offscreen black
waitkeydown(inf,59); %waits an infinite time for the Enter (key ID=59) to be pressed


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%Repeat=1;
%Trial 1; d ms
preparepuretone(500,d,1); %fills buffer 1 with a 500 Hz sine wave sound lasting d milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
clearpict(1); %fills buffer 1 with the current background colour, clearing any previous contents
preparestring('Press the space bar to continue', 1) %draw 1 in display buffer 1
drawpict(1); %copy display buffer 1 to screen
waitkeyup(inf,71); %wait for any key to be released
wait (2000);

%Trial 2; e ms
preparepuretone(500,e,1); %fills buffer 1 with a 500 Hz sine wave sound lasting d milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
clearpict(1); %fills buffer 1 with the current background colour, clearing any previous contents
preparestring('Press the space bar to continue', 1) %draw 1 in display buffer 1
drawpict(1); %copy display buffer 1 to screen
waitkeyup(inf,71); %wait for any key to be released
wait (2000);

%Trial 3; f ms
preparepuretone(500,f,1); %fills buffer 1 with a 500 Hz sine wave sound lasting d milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
clearpict(1); %fills buffer 1 with the current background colour, clearing any previous contents
preparestring('Press the space bar to continue', 1) %draw 1 in display buffer 1
drawpict(1); %copy display buffer 1 to screen
waitkeyup(inf,71); %wait for any key to be released
wait (2000);

%Trial 4; g ms
preparepuretone(500,g,1); %fills buffer 1 with a 500 Hz sine wave sound lasting g milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
clearpict(1); %fills buffer 1 with the current background colour, clearing any previous contents
preparestring('Press the space bar to continue', 1) %draw 1 in display buffer 1
drawpict(1); %copy display buffer 1 to screen
waitkeyup(inf,71); %wait for any key to be released
wait (2000);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%Repeat=2;
%Trial 1; d ms
preparepuretone(500,d,1); %fills buffer 1 with a 500 Hz sine wave sound lasting d milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
clearpict(1); %fills buffer 1 with the current background colour, clearing any previous contents
preparestring('Press the space bar to continue', 1) %draw 1 in display buffer 1
drawpict(1); %copy display buffer 1 to screen
waitkeyup(inf,71); %wait for any key to be released
wait (2000);

%Trial 2; e ms
preparepuretone(500,e,1); %fills buffer 1 with a 500 Hz sine wave sound lasting d milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
clearpict(1); %fills buffer 1 with the current background colour, clearing any previous contents
preparestring('Press the space bar to continue', 1) %draw 1 in display buffer 1
drawpict(1); %copy display buffer 1 to screen
waitkeyup(inf,71); %wait for any key to be released
wait (2000);

%Trial 3; f ms
preparepuretone(500,f,1); %fills buffer 1 with a 500 Hz sine wave sound lasting d milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
clearpict(1); %fills buffer 1 with the current background colour, clearing any previous contents
preparestring('Press the space bar to continue', 1) %draw 1 in display buffer 1
drawpict(1); %copy display buffer 1 to screen
waitkeyup(inf,71); %wait for any key to be released
wait (2000);

%Trial 4; g ms
preparepuretone(500,g,1); %fills buffer 1 with a 500 Hz sine wave sound lasting g milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
clearpict(1); %fills buffer 1 with the current background colour, clearing any previous contents
preparestring('Press the space bar to continue', 1) %draw 1 in display buffer 1
drawpict(1); %copy display buffer 1 to screen
waitkeyup(inf,71); %wait for any key to be released
wait (2000);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%Repeat=3;
%Trial 1; d ms
preparepuretone(500,d,1); %fills buffer 1 with a 500 Hz sine wave sound lasting d milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
clearpict(1); %fills buffer 1 with the current background colour, clearing any previous contents
preparestring('Press the space bar to continue', 1) %draw 1 in display buffer 1
drawpict(1); %copy display buffer 1 to screen
waitkeyup(inf,71); %wait for any key to be released
wait (2000);

%Trial 2; e ms
preparepuretone(500,e,1); %fills buffer 1 with a 500 Hz sine wave sound lasting d milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
clearpict(1); %fills buffer 1 with the current background colour, clearing any previous contents
preparestring('Press the space bar to continue', 1) %draw 1 in display buffer 1
drawpict(1); %copy display buffer 1 to screen
waitkeyup(inf,71); %wait for any key to be released
wait (2000);

%Trial 3; f ms
preparepuretone(500,f,1); %fills buffer 1 with a 500 Hz sine wave sound lasting d milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
clearpict(1); %fills buffer 1 with the current background colour, clearing any previous contents
preparestring('Press the space bar to continue', 1) %draw 1 in display buffer 1
drawpict(1); %copy display buffer 1 to screen
waitkeyup(inf,71); %wait for any key to be released
wait (2000);

%Trial 4; g ms
preparepuretone(500,g,1); %fills buffer 1 with a 500 Hz sine wave sound lasting g milliseconds
playsound (1); %plays the sound in buffer 1
waitsound(1); %waits for the sound in buffer 1 to finish playing 
clearpict(1); %fills buffer 1 with the current background colour, clearing any previous contents
preparestring('Press the space bar to continue', 1) %draw 1 in display buffer 1
drawpict(1); %copy display buffer 1 to screen
waitkeyup(inf,71); %wait for any key to be released
wait (2000);


stop_cogent

%save the tables with a specified name and path to a excel sheets
[FileName, PathName, FilterIndex] = uiputfile('*.xls', 'Save table as:');
if ~ischar(FileName)
disp('User aborted the dialog');
return;
end
File = fullfile(PathName, FileName);
writetable(Table_Demo,File,'Sheet','Table_Demo');
writetable(Table_reproduction,File,'Sheet','Table_reproduction');
writetable(Table_production,File,'Sheet','Table_production');



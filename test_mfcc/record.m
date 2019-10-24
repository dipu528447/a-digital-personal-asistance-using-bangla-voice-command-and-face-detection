fs=44100;
r=audiorecorder(fs,16,2)
clc
record(r)
pause(2)
voice=getaudiodata(r);
audiowrite('53.wav',voice,fs)

fs=8000;
r=audiorecorder(fs,8,1)
clc
recordblocking(r,5)
voice=getaudiodata(r);
audiowrite('53.wav',voice,fs)
x=audioread('53.wav')
sound(x,fs)
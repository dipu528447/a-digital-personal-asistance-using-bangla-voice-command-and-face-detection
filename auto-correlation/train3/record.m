fs=44100;
r=audiorecorder(fs,16,2)
recordblocking(r,2)
voice=getaudiodata(r);
audiowrite('120.wav',voice,fs)
%path="dipu"
%command="mkdir "+path+"\new_folder"
%disp(command)
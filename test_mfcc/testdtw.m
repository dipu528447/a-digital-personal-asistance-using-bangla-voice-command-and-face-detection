fs=44100
for i=0:1:65
    fname=sprintf('%d.wav',i); 
    [x,fs]=audioread(fname); 
   [x1 x2]=vad(x); 
    [amp,damp]=duanshinl(x);
    m=mfcc(x); 
    m=m(x1:round(x2),:); 
    %test(i).data=[amp(1:100),damp(1:100)]; 
    test(i+1).data=m; 
end 
save test test
clear test
clear d
clear damp
clear index
clear amp
clear dist
clear m
clear n
clear r
clear command
clear fs
clear voice
clc
load test.mat
fs=44100;
r=audiorecorder(fs,16,2)
clc
record(r)
pause(2)
voice=getaudiodata(r);
audiowrite('s.wav',voice,fs)
[x,fs]=audioread('s.wav')
[x1 x2]=vad(x);
[amp,damp]=duanshinl(x)
m=mfcc(x)
m=m(x1:round(x2),:)
n=m
%for i=1:6 
%    fname=sprintf('%da.wav',i); 
 
   %[x,fs]=audioread(fname); 
     
    %[x1 x2]=vad(x); 
    %[amp,damp]=duanshinl(x); 
    %m=mfcc(x); 
   % m=m(x1:round(x2),:); 
    %ref(i).data=[amp(1:100),damp(1:100)]; 
    %ref(i).data=m; 
     
%end 
 
dist=zeros(0,65); 
for i=0:65
  for j=0:65
     % dist(i,j)=dtw(test(i).data,ref(j).data);
     %disp(j)
      dist(1,j+1)=dtw(n,test(j+1).data);
     
  end 
end
    [d index]=min(dist); 
    q=(index)/6
    clc
    disp('you said ')
    path="C:\"
    command=""
    if(q<1)
        command="explorer C:\Users\HP\Documents"
        path="cd /d c:\users\hp\documents"
    elseif(q<2)
        command="explorer C:\Users\HP\pictures"
        path="cd /d c:\users\hp\pictures"
    elseif(q<3)
        command="explorer C:\Users\HP\videos"
        path="cd /d c:\users\hp\videos"
    elseif(q<4)
         command="explorer C:\Users\HP\desktop"
         path="cd /d c:\users\hp\desktop"
    elseif(q<5)
       command="explorer C:"
       path="cd /d c:\"
    elseif(q<6)
        command="explorer E:"
        path="cd /d e:\"
    elseif(q<7)
        command="notepad &"
    elseif(q<8)
        system(path)
        command="mkdir new_folder"
    elseif(q<9)
        system(path)
        command="rd new_folder"       
    elseif(q<10)
        command="start chrome"
        status=system(command)
    elseif(q<11)
       command="start chrome www.facebook.com"
        status=system(command)
    else
        clc
        disp('please say again')
        
    end
    status=system(command)
    

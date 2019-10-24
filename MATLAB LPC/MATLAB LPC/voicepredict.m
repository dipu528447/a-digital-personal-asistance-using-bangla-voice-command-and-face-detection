clc;clear all;
load('voicetrainfinal.mat');
Fs=8000;
%for l=1:20
    clear y1 y2 y3;
    display('record voice');
    
    %x=wavrecord(Fs,Fs);
    r=audiorecorder(Fs,8,1)
    recordblocking(r,2)
    
    x=getaudiodata(r);
    %sound(x,Fs)
    t=0.004;
    j=1;
    for i=1:8000
        if(abs(x(i))>t)
            y1(j)=x(i);
            j=j+1;
        end
    end
    y2=y1/(max(abs(y1)));
    y3=[y2,zeros(1,3120-length(y2))];
    y=filter([1 -0.9],1,y3');
    %%frame blocking
    blocklen=240;%30ms block
    overlap=80;
    block(1,:)=y(1:240);
    for i=1:18
        block(i+1,:)=y(i*160:(i*160+blocklen-1));
    end
    w=hamming(blocklen);
    for i=1:19
        a=xcorr((block(i,:).*w'),12);
        for j=1:12
            auto(j,:)=fliplr(a(j+1:j+12));
        end
        z=fliplr(a(1:12));
        alpha=pinv(auto)*z';
        lpc(:,i)=alpha;
    end
    sound(x,Fs);
    X1=reshape(lpc,1,228);
    a1=sigmoid(Theta1*[1;X1']);
    h=sigmoid(Theta2*[1;a1]);
    m=max(h);
    p1=find(h==m);
    P=p1
    
    if(P==1)
        command="explorer C:\Users\HP\Documents"
        path="cd /d c:\users\hp\documents"
        status=system(command)
    elseif(P==2)
        command="explorer C:\Users\HP\pictures"
        path="cd /d c:\users\hp\pictures"
        status=system(command)
    elseif(P==3)
        command="explorer C:\Users\HP\videos"
        path="cd /d c:\users\hp\videos"
        status=system(command)
    elseif(P==4)
        command="explorer C:\Users\HP\desktop"
      %  path="cd /d c:\users\hp\desktop"
        status=system(command)
    elseif(P==5)
        command="explorer C:"
       % path="cd /d c:\"
        status=system(command)
    elseif(P==6)
        command="explorer E:"
        %path="cd /d e:\"
        status=system(command)
    elseif(P==7)
        command="notepad &"
        status=system(command)
    elseif(P==8)
        %system(path)
        command="mkdir new_folder"
    elseif(P==9)
        %system(path)
        command="rd new_folder"
    elseif(P==10)
        command="start chrome"
        status=system(command)
    elseif(P==11)
        command="start chrome www.facebook.com"
        status=system(command)
    end
%end

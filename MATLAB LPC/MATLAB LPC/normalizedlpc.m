clc;
clear all;
Fs=8000;
for k=1:33
    clear y1 y2 y3;
display('record voice');
%pause();
%x=wavrecord(Fs,Fs);
r=audiorecorder(Fs,8,1)
recordblocking(r,2)
x=getaudiodata(r);
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
X(k,:)=reshape(lpc,1,228);
Y(k,:)=input('enter the number');
end
save('lpcdata.mat','X','Y');
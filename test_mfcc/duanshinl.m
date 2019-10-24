
function [amp,damp]=duanshinl(x) 
x=filter([1 -0.9375],1,x); 
xx=enframe(x,880,440);
 
for i=1:size(xx,1) 
    y=xx(i,:); 
    s=y'.*hamming(880); 
    t=abs(s); 
    e=log(sum(t)); 
    amp(i,:)=e; 
end 
amp=amp(5:size(amp,1)-4,:); 
 
for i=2:size(amp,1)-1 
    damp(i,:)=amp(i,:)-amp(i-1,:); 
end 
 
damp=damp(2:size(amp,1)-1,:);
function V = hogDraw( H, w )


if(nargin<2 || isempty(w)), w=15; end
bar=zeros(w,w); bar(:,round(.45*w):round(.55*w))=1;
bars=zeros([size(bar) 9]);
for i=1:9, bars(:,:,i)=imrotate(bar,-(i-1)*180/9,'crop'); end

H(H<0)=0; V=zeros(w*[size(H, 1) size(H, 2)]);
for r=1:size(H, 1), rs=(1:w)+(r-1)*w;
  for c=1:size(H, 2), cs=(1:w)+(c-1)*w;
    for i=1:9, V(rs,cs)=V(rs,cs)+bars(:,:,i)*H(r,c,i); end
  end
end

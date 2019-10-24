
function [x,y,score] = detect(I,template,ndet)
f = hog(I);
nori = size(f,3);

R = zeros(size(f,1),size(f,2));
for i = 1:nori
  fliptemp = flipud(fliplr(template(:,:,i)));
  R = R + conv2(f(:,:,i),fliptemp,'same'); 
end
[val,ind] = sort(R(:),'descend');


x = [];
y = [];
i = 1;
detcount = 0;
while ((detcount < ndet) & (i < length(ind)))
  
  xblock = floor(ind(i)./size(f,1));
  yblock = ind(i) - xblock*size(f,1);
  if yblock == 0        
      if xblock == 0
          xblock = 1;
          yblock = 1;
      else
        yblock = size(f,1);
      end
  else
      xblock = xblock + 1;
  end
  
  assert(val(i)==R(yblock,xblock)); 

  
  ypixel = 8*yblock;
  xpixel = 8*xblock;


  overlap = 0;
  ydiff = abs(ypixel - y)./8;
  xdiff = abs(xpixel - x)./8; 
  ydiff = ydiff < (size(template,1));
  xdiff = xdiff < (size(template,2));
  diff = ydiff & xdiff;
  if(sum(diff) > 0)
      overlap = 1;
  end


  if (~overlap)
    detcount = detcount+1;
    x(detcount) = xpixel;
    y(detcount) = ypixel;
    score(detcount) = val(i);
  end
  i = i + 1
end



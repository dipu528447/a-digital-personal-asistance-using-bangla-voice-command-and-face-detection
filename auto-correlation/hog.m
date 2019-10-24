function ohist = hog(I)

[h,w] = size(I);
h2 = ceil(h/8); 
w2 = ceil(w/8);
nori = 9;       

[mag,ori] = mygradient(I);
thresh =  0.1*max(mag(:));  

bins = -pi/2:pi/9:pi/2; 


ohist = zeros(h2,w2,nori);
for i = 1:nori
  B = (mag > thresh) & (ori >= bins(i)) & (ori <= bins(i+1));


  chblock = im2col(B,[8 8],'distinct');  
                                         
  chblockSums = sum(chblock);
  ohist(:,:,i) = reshape(chblockSums, h2, w2);                     
end


normalizingFactor = sum(ohist,3); 
normalizingFactor(find(~normalizingFactor)) = 1;
for i = 1:nori % normalizing:
    ohist(:,:,i) = ohist(:,:,i)./normalizingFactor(:,:);
end




function [mag,ori] = mygradient(I)

der = [-1 0 1];

dx = imfilter(I, der);
dy = imfilter(I, der');

mag = sqrt(dx.^2 + dy.^2);
ori = atan(dy./dx);       


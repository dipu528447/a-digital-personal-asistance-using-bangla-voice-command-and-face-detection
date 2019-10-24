
function[]=main()
import java.awt.Robot;
import java.awt.event.*;
camHeight = 720;
camWidth = 1280;
T = 300;
mouse = Robot();
dim = get(0, 'screensize');
screenDim = [dim(3) dim(4)];
scale = 15;
vid = videoinput('winvideo');
set(vid,'ReturnedColorSpace','rgb');
triggerconfig(vid, 'manual');
start(vid);
for i = 1:50
    im = imresize(fliplr(getsnapshot(vid)),0.5);
    imagesc(im); 
end
im = im2double(im);
eyedetect=vision.CascadeObjectDetector('FrontalFaceCART');
bb=step(eyedetect,im);
faceTemplCoord=bb;
face = im(faceTemplCoord(2):(faceTemplCoord(2)+faceTemplCoord(4)), faceTemplCoord(1):(faceTemplCoord(1)+faceTemplCoord(3)),:);
faceHOG = hog(rgb2gray(face));
[x,y,score] = detect(rgb2gray(im),faceHOG,1);
bbox = [x-faceTemplCoord(3)/2 y-faceTemplCoord(4)/2 faceTemplCoord(3) faceTemplCoord(4)]; 
bboxPoints = bbox2points(bbox);
imagesc(im);
hold on; 
h = rectangle('Position',bbox,'EdgeColor','green','LineWidth',3,'Curvature',[0.3 0.3]);
hold off
points = detectMinEigenFeatures(rgb2gray(im), 'ROI', bbox);
hold on;

plot(points); pause(0.01);
  
mouseCoords = [screenDim(1)/2 screenDim(2)/2];
mouse.mouseMove(mouseCoords(1), mouseCoords(2));

pointTracker = vision.PointTracker('MaxBidirectionalError', 3);
points = points.Location;
initialize(pointTracker, points, im);
oldPoints = points;
oldMeanFacePos = mean(points);
timenow = clock;
startTime = timenow(5:6);

for i = 1:T
    frame = im2double(imresize(fliplr(getsnapshot(vid)),0.5));
    [points, isFound] = step(pointTracker, frame);
    visiblePoints = points(isFound, :);
    oldInliers = oldPoints(isFound, :);
    
    if size(visiblePoints,1) >= 100

        
        frame = insertMarker(frame, visiblePoints, '+', ...
            'Color', 'white');
        newMeanFacePos = mean(visiblePoints);
        frame = insertMarker(frame, newMeanFacePos, '*', 'Color', 'red', 'Size', 20);
        
        mouseCoords = floor(double(getMouseCoords(newMeanFacePos-oldMeanFacePos,mouseCoords,scale,screenDim)));
        mouse.mouseMove(mouseCoords(1), mouseCoords(2));
        oldPoints = visiblePoints;
        oldMeanFacePos = newMeanFacePos;
        setPoints(pointTracker, oldPoints);
    else
        
        release(pointTracker);
        for j = 1:20
            frame = im2double(imresize(fliplr(getsnapshot(vid)),0.5));
            imagesc(frame); pause(0.01);
          
        end
        for j = 1:30
            frame = im2double(imresize(fliplr(getsnapshot(vid)),0.5));
            imagesc(frame); pause(0.01);
        
        end
        
        [x,y,score] = detect(rgb2gray(frame),faceHOG,1);
        bbox = [x-faceTemplCoord(3)/2 y-faceTemplCoord(4)/2 faceTemplCoord(3) faceTemplCoord(4)]; %[xmin ymin width height]
        
        points = detectMinEigenFeatures(rgb2gray(frame), 'ROI', bbox);
        
        hold on;
       
        plot(points); pause(0.01);
       
        points = points.Location;
        initialize(pointTracker, points, frame);
        oldPoints = points;
        setPoints(pointTracker, oldPoints);
    end
    
    
    imagesc(frame);
   
        pause(0.01); 
    
end

timenow = clock;
endtime = timenow(5:6);

release(pointTracker);

stop(vid);

delete(vid);
imaqreset; 

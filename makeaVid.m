
cd('C:\Users\johna\Downloads')

v = VideoReader('1_UNMC_1_1.mp4');

%%

grayVid = zeros(v.Height,v.Width,v.NumFrames,'int8');
fcount = 1;
for vi = 1:v.NumFrames
    vidFrame = read(v,vi);
    grFrame = rgb2gray(vidFrame);
    grayVid(:,:,fcount) = grFrame;
    display(fcount)
    fcount = fcount + 1;
end

%%


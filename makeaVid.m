
% cd('C:\Users\johna\Downloads')

v = VideoReader('2_UNMC-final2_1_1.mp4');

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
% GUI compiles all mat files saves only DIGIN data

% Load in TTL - need to downsample to 100 Hz from 44kHz

% Load in time from night recording

% Epoch start number for each video file

% Break up video file into indices that have 10 frames / per second / per
% 30 seconds [300 frames]




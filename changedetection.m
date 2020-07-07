function changedetection(vidname)
%%                         Detect changes in a video

%% Input - read in the videofile and define the first frame

%clear

MovieObj = VideoReader(vidname); %Read in the videofile
nframes = get(MovieObj, 'NumberOfFrames'); %Compute the number of frames in the video
FirstFrame=read(MovieObj,1); %Define the first frame in the video as the FirstFrame
FirstFrame=rgb2gray(FirstFrame); %Change the frame into grayscale

%% Create an array "Original" from the original movie


for k = 1 : nframes
    OriginalFrame = read(MovieObj, k); %Read in the k:th frame
    OriginalFrame=rgb2gray(OriginalFrame); %Change the frame into grayscale
    Original(:,:,:,k) = OriginalFrame; %Write the results into 
...the array "Original"
end

%% Compute the difference between the first and k:th frame and create an array "EnhancedChange"
...(the k:th frame defined as NextFrame)

flag = 0;

for k = 1 : nframes
    NextFrame = read(MovieObj, k); %Read in the k:th frame
    NextFrame=rgb2gray(NextFrame); %Change the frame into grayscale
    NextFrame=FirstFrame-NextFrame; %Compute the difference between 
    ...the first and k:th frame
    if(FirstFrame-NextFrame~=0)
        if(flag==0)
            f=k+1;
            flag=1;
        end
    end
    EnhancedChange(:,:,:,k) = NextFrame*2; %Write the results into 
...the array "EnhancedChange"
end


%% Play the results with implay with the original video on top and changes below

Mov=vertcat(Original,EnhancedChange);
%implay(Mov)

%% Write the resulting file into avi file 

writerObj = VideoWriter('changesummary.avi');
open(writerObj);
writeVideo(writerObj,Mov);
close(writerObj);

%% Sending email about change detection

changedetectmail();

end
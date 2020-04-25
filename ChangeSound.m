clear;close;clc;
%{
    this Code is using change sound stereo sound to mono sound 
    ref
    profile https://www.mathworks.com/matlabcentral/profile/authors/12889159-joshuat
    2009
    https://www.mathworks.com/matlabcentral/answers/345155-how-to-check-number-of-channels-of-a-sound-file-and-convert-stereo-file-in-mono-in-matlab
    
    *****************************************
    * I hope it will be useful for everyone.*
    *****************************************

    github 
%}
datafolder = fullfile(pwd);
db = audioDatastore(datafolder,'FileExtensions','.wav');
filesAll = numel(db.Files);

for i=1 :filesAll 
    [x,fs] = audioread(db.Files{i});
    soundNew = changeSoundmono(x);
    myPath = db.Files{i};
    expression = '\w+.wav';
    splitStr = regexp(myPath,expression,'match');
     if(~isempty(soundNew))
        SavefileName(splitStr,soundNew,fs);
         
     end
end

Createdby  = '<a href = "https://github.com/DoIttikorn">Github Created by Ittikorn</a>';
disp(Createdby)





function y = changeSoundmono(x)
% [x,fs] = audioread('myWavFile.wav');
[m, n] = size(x); %gives dimensions of array where n is the number of stereo channels
if n == 2
    y = x(:, 1) + x(:, 2); %sum(y, 2) also accomplishes this
    peakAmp = max(abs(y)); 
    y = y/peakAmp;
    %  check the L/R channels for orig. peak Amplitudes
    peakL = max(abs(x(:, 1)));
    peakR = max(abs(x(:, 2))); 
    maxPeak = max([peakL peakR]);
    %apply x's original peak amplitude to the normalized mono mixdown 
    y =  y * maxPeak;
    
else
    y = x; %it is stereo so we will return it as is (e.g., for additional processing)
end

end
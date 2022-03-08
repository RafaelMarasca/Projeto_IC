%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% @file: audio_manipulations.m
% @autor: Rafael Marasca Martins
% 
% File for testing audio processing in MATLAB
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Audio file selecting interface
[file_name, file_path] = uigetfile({'*.wav;*.mp3','Sound Files(*.mp3,*.wav)'});

% Verifies user action
if isequal(file_name,0)
    error('No file selected')
else
    % Opens audio file
    [sound_file,fs] = audioread(strcat(file_path,file_name));
    % Generates audio file spectrogram
    pspectrum(sound_file(:,1),fs,"spectrogram")
    %melSpectrogram(sound_file,fs) 
end 


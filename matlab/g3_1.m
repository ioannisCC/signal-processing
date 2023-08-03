import notes_function.*

fs = 8000;     % define sampling frequency
dt = 0.4;      % pauses between the notes (signals)
symphony = [
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'G '; 'C '; 'D '; 'E ';...
    'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'G#'; 'B '; 'C#'; 'D#'; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'G '; 'C '; 'D '; 'E ';...
    'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'G#'; 'B '; 'C#'; 'D#'; 'E ';...
    'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'G#'; 'B '; 'C#'; 'D#'; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'G '; 'C '; 'D '; 'E ';...
    'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'G#'; 'B '; 'C#'; 'D#'; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'G '; 'G '; 'G '; 'G '; 'G '; 'G '; 'G '; 'G '; 'G '; 'G '; 'G '; 'G '   
];

notes = ['C ';'C#';'D ';'D#';'E ';'F ';'F#';'G ';'G#';'A ';'A#';'B '];

for i = 1:1:length(symphony) % iterate through each element of notes array
        soundsc(generate_note_waveform(symphony(i,1:end),dt,fs,1));
        soundsc(0);
        % here we use the built in soundsc() function of matlab in order to 
        % generate the sounds
end

for i = 1:1:length(notes) % iterate through each element of notes array
        soundsc(generate_note_waveform(notes(i,1:end),dt,fs,1));
        soundsc(0);
        % here we use the built in soundsc() function of matlab in order to 
        % generate the sounds
end

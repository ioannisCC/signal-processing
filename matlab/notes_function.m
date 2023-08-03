classdef notes_function
    methods (Static)
        function note = generate_note_waveform(selected_note, duration, fs,volume)
        % takes four input arguments
        t = 0:(1/fs):duration; % time vector
        
            switch selected_note
                case 'A ', f = 220;          
                case 'A#', f = 220*2^(1/12); 
                case 'B ', f = 220*2^(2/12); 
                case 'C ', f = 220*2^(3/12); 
                case 'C#', f = 220*2^(4/12); 
                case 'D ', f = 220*2^(5/12); 
                case 'D#', f = 220*2^(6/12); 
                case 'E ', f = 220*2^(7/12); 
                case 'F ', f = 220*2^(8/12); 
                case 'F#', f = 220*2^(9/12); 
                case 'G ', f = 220*2^(10/12); 
                case 'G#', f = 220*2^(11/12); 
            end

        note = volume*sin(2*pi*f*t); % the selected note's waveform sin
        
        end
    end
end
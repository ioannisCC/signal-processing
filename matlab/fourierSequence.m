
classdef fourierSequence
    methods (Static)
        function x = cos_signal(f, T)
            % signal
            fs = 2*f; % sampling frequency (Hz)
            t = linspace(0, T, 100); % 100 time values so that the signal is
            % finite and produces an exact set of values

            % calculate the function
            x = cos(2*pi*f*t);
        end

        function fourier_sequence(signal)
            % define parameters
            T = 1;  % signal duration
            fs = 1000;  % sampling frequency (Hz)
            t = linspace(0, T, length(signal)); % time values;
            disp(t);

            % compute Fourier sequence
            X = fft(signal);
            X = X / length(signal);
            
            % compute frequency vector
            f = (-fs/2 : fs/length(t) : fs/2 - fs/length(t));

            % plot magnitude spectrum
            plot(f, abs(X));
            xlabel('frequency (Hz)');
            ylabel('magnitude');
            title('magnitude spectrum');
        end
    end
end


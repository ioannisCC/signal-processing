
classdef reverseFourierTransform
    methods (Static)
        function x = reverse_fourier_transform(coefficients, base_frequency, num_coefficients)
            % calculate the time values
            fs = base_frequency * num_coefficients; % sampling frequency
            T = num_coefficients / fs; % signal duration
            t = linspace(0, T, num_coefficients+1); % time values
        
            % calculate the reverse fourier transform
            X = zeros(size(t)); % initialize the transformed signal with a matrix of zeros
            for k = 1:length(coefficients) %iterates over the fourier coefficients
                X = X + coefficients(k) * exp(1i * 2 * pi * (k-1) * base_frequency * t);
                % the coresponding complex exponential term is calculated
                % X represents the reverse fourier transform of the signal
            end
        
            % scale the transformed signal in order to noramlize
            x = X / length(coefficients);
        
            % plot the reverse fourier transform
            plot(t, real(x));
            xlabel('time');
            ylabel('amplitude');
            title('reverse fourier transform');
        end
    end
end

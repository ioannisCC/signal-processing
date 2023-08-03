import fourierSequence.*
import reverseFourierTransform.*

% convert 'k' to its ASCII value
k_ascii = double('k');

fourierSequence.fourier_sequence(k_ascii);

reverseFourierTransform.reverse_fourier_transform(k_ascii,1,length(k_ascii));
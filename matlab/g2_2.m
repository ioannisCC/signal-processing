import reverseFourierTransform.*

coefficients = [1, -0.5, 0.25];
base_frequency = 2*pi; % radians per second
num_coefficients = 100;


reverseFourierTransform.reverse_fourier_transform(coefficients, base_frequency, num_coefficients)
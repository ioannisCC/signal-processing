% in the code below the ~ is used as a placeholder to discard some 
% values from being assigned

image = 'weeknd.jpeg';
num_coeff = 2000;

array = imread(image);
[~, ~, p] = size(array);      % we check if the image is gray scale or rgb

if p == 3
    array = rgb2gray(array);  % convert the rgb image to grayscale
end
    
dbl = double(array);         % convert the array with the grayscale image
                             % into double data type

dft = dct2(dbl);             % perform the 2 dimensional discrete cosine
                             % transform which returms frequency

square2 = (dft).^2;          % claculate the squared magnitude of each element in 
                             % dft array

square2 = square2(:);        % reshape the array into a cloumn vector so
                             % that it will be 1 dimesion

[~,index] = sort(square2);    % sort the elements in ascending order
                             % and returns the sorted indeces

index = flipud(index);       % flip the order of elements in order to 
                             % prioritize coefficients with larger
                             % magnitudes at beggining of the array

compressed_dft = zeros(size(dbl));   % initialize a matrix of zeros

for i = 1:num_coeff
    compressed_dft(index(i)) = dft(index(i));   
    % assign the dct coefficient in the index(i) position in the dft matrix
end

output = idct2(compressed_dft); % perform inverse dct on the comprssed
output = uint8(output); % convert to uint8 data type to ensure that the 
                        % pixel values of the reconstructed image are [0, 255]

imwrite(output, 'weeknd_compressed.jpg'); % save the recontructed image
subplot 121; imshow(array); title('original');
subplot 122; imshow(output); title('reconstructed');
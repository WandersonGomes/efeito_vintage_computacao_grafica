% FONTE:
% https://stackoverflow.com/questions/25751673/how-do-i-create-vintage-images-in-matlab

im = double(imread('imagem.png')); % // Read in your image here
inputRed = im(:,:,1); %// Extract each colour plane
inputGreen = im(:,:,2);
inputBlue = im(:,:,3);

%// Create sepia tones for each channel
outputRed = (inputRed * .393) + (inputGreen *.769) + (inputBlue * .189);
outputGreen = (inputRed * .349) + (inputGreen *.686) + (inputBlue * .168);
outputBlue = (inputRed * .272) + (inputGreen *.534) + (inputBlue * .131);

%// Create output image by putting all of these back into a 3D matrix
%// and convert back to uint8
out = uint8(cat(3, outputRed, outputGreen, outputBlue));

figure;
imshow(im,[]); %// Show original image
figure;
imshow(out); %// Show sepia image

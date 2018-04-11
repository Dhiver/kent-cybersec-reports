% EL844 workshop 2 - bfrd2

% display parameters
nb_pictures = 6;
col = round(nb_pictures / 2);
% 64 comes from the linspace value of 1 and 127
% 191 comes from the linspace value of 127 and 255
thresholds = uint8(linspace(64, 191, nb_pictures));

% load an image
X = imread('../input/pout.tif');

% compute and display the binarized image in subplots
subplot(2,col,1)
imshow(X)
title('Original')

for i=2:nb_pictures
    subplot(2,col,i)
    imshow(bzimg(X, thresholds(i-1)));
    title(sprintf('Threshold %d', thresholds(i-1)))
end
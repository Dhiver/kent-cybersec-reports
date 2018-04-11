% EL844 workshop 2 - bfrd2

% load an image
X = imread('../input/pout.tif');

% add some salt and pepper noise
X = imnoise(X, 'salt & pepper');

% apply the filters and display the results
subplot(2,3,1);
imshow(X);
title('original');
subplot(2,3,2);
n3 = navg3(X);
imshow(n3);
title('navg 3x3');
subplot(2,3,3); 
n5 = navg5(X);
imshow(n5);
title('navg 5x5');
subplot(2,3,5);
m3 = med3(X);
imshow(m3);
title('med 3x3');
subplot(2,3,6);
m5 = med5(X);
imshow(m5);
title('med 5x5');

% EL844 workshop 2 - bfrd2

addpath('../a') % we need glh2()

% load a byte image
X = openByteImage('../input/test12.img');

% get the GLH
glh = glh2(X);
title('test12 GLH')
figure;

% binarize the image with a visually selected threshold
binarized = bzimg(X, 4);

% display with different thresholds
subplot(1,4,1);
imshow(X, [1 20]);
title('Original')
subplot(1,4,2);
imshow(binarized);
title('Threshold 4')
subplot(1,4,3);
imshow(bzimg(X, 2));
title('Threshold 2')
subplot(1,4,4);
imshow(bzimg(X, 6));
title('Threshold 6')




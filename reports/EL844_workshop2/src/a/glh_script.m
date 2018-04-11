% EL844 workshop 2 - bfrd2

% load an image
X = imread('../input/rice.png');

% compute and display the grey level histogram 
% in different windows
glh1(X);
title('bzimg1()')
figure;
glh = glh2(X);
title('bzimg2()')
figure;
glh3(X);
title('bzimg3()')

% display histogram next to the original image
figure;
subplot(1,2,1);
imshow(X);
title('original')
subplot(1,2,2);
bar(glh);
title('GLH')
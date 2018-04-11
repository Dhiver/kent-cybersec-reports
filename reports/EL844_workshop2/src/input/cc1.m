
% To read an image stored as a byte sequence use the lines below
% This is equivalent to imread for images stored as byte files
% You need to know the dimensions of the image

maxrows=128;
maxcols=128;

fid = fopen('test1.img','r');
[J,count]=fread(fid,[maxcols,maxrows],'uchar');

%To read Windows Bitmap (.bmp) files use imread()


% The line below displays the image as a matrix
imshow(J)

pause


%This is a loop for processing individual pixels in an image

mark=5;
low=0;
high=255;

for i = 1:maxrows
   for j = 1:maxcols
      if J(i,j)< mark
         % process pixel at (i,j)
		else
			% process pixel at (i,j)
		end
	end
end



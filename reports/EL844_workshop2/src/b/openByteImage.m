% EL844 workshop 2 - bfrd2

function [out] = openByteImage(path)
%OPENBYTEIMAGE Opens a binary image
maxrows = 128;
maxcols = 128;

fid = fopen(path, 'r');
out = fread(fid,[maxcols,maxrows],'uchar');

fclose(fid);

end


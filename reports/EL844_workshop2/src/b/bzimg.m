% EL844 workshop 2 - bfrd2

function [out] = bzimg(X, thr)
%BZIMG Binarize the given image with the given threshold
for x=1: size(X, 1)
  for y=1: size(X, 2)
      if X(x, y) >= thr % if higher or equals to threshold 
          out(x, y) = 1; % set to 'white'
      else
          out(x, y) = 0;
      end
  end
end
end


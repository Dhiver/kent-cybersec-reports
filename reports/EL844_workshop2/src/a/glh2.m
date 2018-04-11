% EL844 workshop 2 - bfrd2

function [out] = glh2(X)
%GLH2 Computes and display the given image histogram
out = zeros(1, 255); % initialize histogram matrix

X = X(:) + 1; % add one for each values so that the index used in the loop will be > 0

% for each values in the matrix
for x=1: size(X, 1)
  for y=1: size(X, 2)
      out(X(x, y)) = out(X(x, y)) + 1; % increment the output array value where the pixel value is encountered
  end
end
bar(out)
end
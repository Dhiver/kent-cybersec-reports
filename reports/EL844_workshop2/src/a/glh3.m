% EL844 workshop 2 - bfrd2

function [out] = glh3(X)
%GLH3 Computes and display the given image histogram
out = accumarray(X(:) + 1, 1); % add one for the index in order to be > 0
bar(out)
end


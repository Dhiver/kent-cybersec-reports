% EL844 workshop 2 - bfrd2

function [out] = glh1(X)
%GLH1 Computes and display the given image histogram 
out = imhist(X);
bar(out)
end

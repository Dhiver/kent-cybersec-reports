% EL844 workshop 2 - bfrd2

function [out] = bzimg2(X, thr)
%BZIMG2 Binarize the given image with the given threshold
out(:, :) = X(:, :) >= thr;
end


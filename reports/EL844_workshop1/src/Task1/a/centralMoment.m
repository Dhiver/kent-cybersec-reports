% Login: bfrd2, EL844

function [ret] = centralMoment(X, p, q)
%centralMoment This function computes the central moment of order (p + q)
    % Used to make the feature not affected by position
ret = 0;
notx = f2DMoment(X, 1, 0) / f2DMoment(X, 0, 0); % centre of gravity x position
noty = f2DMoment(X, 0, 1) / f2DMoment(X, 0, 0); % centre of gravity y position

for x=1: size(X, 1)
    for y=1: size(X, 2)
        ret = ret + (x - notx)^p * (y - noty)^q * X(x, y);
    end
end
end
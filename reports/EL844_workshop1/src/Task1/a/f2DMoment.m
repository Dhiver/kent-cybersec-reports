% Login: bfrd2, EL844

function [ret] = f2DMoment(X, p, q)
%f2DMoment This function computes the 2D moment of order (p + q)
ret = 0;
for x=1: size(X, 1) % for each rows
    for y=1: size(X, 2) % for each columns
        ret = ret + (x^p) * (y^q) * X(x, y);
    end
end
end
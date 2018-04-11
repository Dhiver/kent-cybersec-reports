% EL844 workshop 2 - bfrd2

function [out] = navg3(X)
%NAVG3 neighbourhood averaging technique on a 3x3

% deal with the image edges by adding a border of 127 around the original
% matrix
[row, col] = size(X);
tmp = 127 * ones(row+2, col+2, 'uint8');
for x=2: row+1
    for y=2: col+1
        tmp(x, y) = X(x-1, y-1);
    end
end

nb_nbr = 9; % number of neighboors (current pixel included)

% apply filter
for x=2: row+1
    for y=2: col+1
        out(x-1, y-1) = ...
              tmp(x-1, y-1)/nb_nbr ...
            + tmp(x-1, y)/nb_nbr ...
            + tmp(x-1, y+1)/nb_nbr ...
            + tmp(x, y-1)/nb_nbr ...
            + tmp(x, y)/nb_nbr ...
            + tmp(x, y+1)/nb_nbr ...
            + tmp(x+1, y-1)/nb_nbr ...
            + tmp(x+1, y)/nb_nbr ...
            + tmp(x+1, y+1)/nb_nbr;
    end
end
% Login: bfrd2, EL844

function [M] = HuInvariantMoments(X)
%HuInvariantMoments This function computes the 7 Hu invariant moments of the given image.
% the values are return inside 1x7 of type double

% precompute reused values
n20 = normalisedCentralMoments(X, 2, 0);
n02 = normalisedCentralMoments(X, 0, 2);
n30 = normalisedCentralMoments(X, 3, 0);
n12 = normalisedCentralMoments(X, 1, 2);
n21 = normalisedCentralMoments(X, 2, 1);
n11 = normalisedCentralMoments(X, 1, 1);
n03 = normalisedCentralMoments(X, 0, 3);

% compute the 7 Hu invariant moments
o1 = n20 + n02;
o2 = (n20 - n02)^2 + 4*n11^2;
o3 = (n30 - 3*n12)^2 + (n03 - 3*n21)^2;
o4 = (n30 + n12)^2 + (n03+n21)^2;
o5 = (n30 - 3*n12) * (n30 + n12) * (  (n30+n12)^2 - 3*(n21 + n03)^2  ) + (n03 - 3*n21)*(n03 + n21) * (  (n03+n21)^2 - 3*(n12+n30)^2   );
o6 = (n20 - n02)* (  (n30 + n12)^2 - (n21 + n03)^2  ) + 4*n11*(n30 + n12)*(n03 + n21);
o7 = (3*n21 - n03) * (n30 + n12) * (  (n30+n12)^2 - 3*(n21 + n03)^2  ) + (n30 - 3*n12)*(n21 + n03) * (  (n03+n21)^2 - 3*(n30+n12)^2   );

M = [o1,o2,o3,o4,o5,o6,o7];

end


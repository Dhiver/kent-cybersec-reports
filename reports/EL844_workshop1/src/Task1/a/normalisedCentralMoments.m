% Login: bfrd2, EL844

function [ret] = normalisedCentralMoments(X, p, q)
%normalisedCentralMoments This function computes the normalized central
%moment of order (p + q)
%  Used to make the features size independent
gamma = ((p+q)/2)+1;

ret = centralMoment(X, p, q) / centralMoment(X, 0, 0)^gamma;
end


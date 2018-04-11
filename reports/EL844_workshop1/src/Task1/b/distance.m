% Login: bfrd2, EL844

function [out] = distance(p1,p2)
%distance This function computes the distance between two points with the
%formula derived from the Pythagorean theorem.
% sqrt((p2(1) - p1(1))^2 + (p2(2) - p1(2))^2)

out = norm(p1 - p2); % equivalent to the above formula
end


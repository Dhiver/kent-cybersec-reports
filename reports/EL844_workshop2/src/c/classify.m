% EL844 workshop 2 - bfrd2

function [out] = classify(X)
%CLASSIFY Classify the given binarized image into an object category
a = area(X);
p = perimeter(X);
pct = 0.07; % percentage of margin

% for each condition check if the features values are in a 7% interval
if (a >= 3509*(1-pct) && a <= 3509*(1+pct)) && (p >= 409*(1-pct) && p <= 409*(1+pct))
    out = 'circle';
elseif (a >= 2469*(1-pct) && a <= 2469*(1+pct)) && (p >= 400*(1-pct) && p <= 400*(1+pct))
    out = 'triangle';
elseif (a >= 3363*(1-pct) && a <= 3363*(1+pct)) && (p >= 501*(1-pct) && p <= 501*(1+pct))
    out = 'nail';
elseif (a >= 2323*(1-pct) && a <= 2323*(1+pct)) && (p >= 440*(1-pct) && p <= 440*(1+pct))
    out = 'screw';
else
    out = 'unknown';
end

end


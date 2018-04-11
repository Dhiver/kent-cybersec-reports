% Login: bfrd2, EL844

function [out] = accuracyRate(X1,X2)
%accuracyRate Returns the accuracy rate between two arrays of the same
%length

len = size(X1, 1);
n = 0;

for x=1: len
    if X1(x) == X2(x)
        n = n + 1;
    end
end

out = (100 * n) / len;

end


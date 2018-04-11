% EL844 workshop 2 - bfrd2

function [out] = area(X)
%AREA Computes the area of the given image by counting the black pixels

out = 0;
for x=1: size(X, 1)
  for y=1: size(X, 2)
      if X(x, y) == 0
          out = out + 1;
      end
  end
end

end
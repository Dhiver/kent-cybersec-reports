% EL844 workshop 2 - bfrd2

function [out] = perimeter(X)
%PERIMETER Computes the perimiter of the given image
out = 0;

for x=2: size(X, 1) - 1
  for y=2: size(X, 2) - 1
      if X(x, y) == 0
          % If there are at least one neighboors, we are on an edge
          neighbors = X(x-1, y-1) + X(x-1, y) + X(x-1, y+1) + X(x, y-1) + X(x, y+1) + X(x+1, y-1) + X(x+1, y) + X(x+1, y+1);
          if neighbors > 0
              out = out + 1;
          end
      end
  end
end
end


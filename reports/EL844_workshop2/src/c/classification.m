% EL844 workshop 2 - bfrd2

addpath('../b') % We need openByteImage()

nb_tests = 12;
out = strings([1,nb_tests]);
correctClassification = {'circle'; 'triangle'; 'nail'; 'screw'; 'circle'; 'nail'; 'screw'; 'circle'; 'unknown'; 'screw'; 'triangle'; 'unknown'};

% for each test images, binarize it and try to classify it
for i=1:nb_tests
    binarized = bzimg(openByteImage(sprintf('../input/test%d.img', i)), 4);
    fprintf('test%d.img: area: %d, perimeter: %d\n', i, area(binarized), perimeter(binarized));
    out(i) = classify(binarized);
end
fprintf('\n'); % spacing for the results

% format and display result table
T = table(correctClassification,out(:));
T.Properties.RowNames = {'t1' 't2' 't3' 't4', 't5', 't6', 't7', 't8', 't9', 't10', 't11', 't12'};
T.Properties.VariableNames = {'correct', 'guess'};
disp(T)

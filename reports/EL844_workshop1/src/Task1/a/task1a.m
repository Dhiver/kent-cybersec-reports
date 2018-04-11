% Login: bfrd2, EL844

% load the image files
img1 = imread('user1_1 binary.png');
img2 = imread('user1_2 binary.png');
img3 = imread('user2_1 binary.png');
img4 = imread('user2_2 binary.png');

% Build the table
T = table([HuInvariantMoments(img1)'], [HuInvariantMoments(img2)'], [HuInvariantMoments(img3)'], [HuInvariantMoments(img4)']);
T.Properties.VariableNames = {'user1_1', 'user1_2', 'user2_1', 'user2_2'};
T.Properties.RowNames = {'ϕ1','ϕ2', 'ϕ3', 'ϕ4', 'ϕ5', 'ϕ6', 'ϕ7'};
T.Properties.Description = 'Hu invariant moments from 4 different signatures';

% display the table
disp(T)

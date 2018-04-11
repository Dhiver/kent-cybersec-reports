% Login: bfrd2, EL844

num = xlsread('features_original.xls'); % we load the input file
userIds = num(:,1); % save the user IDs
num(:,1) = []; % remove the first column

out = zeros(4, 7)'; % init the output matrix

repeatSetupNb = 10;

for N = 2:7
    avg1 = 0;
    avg2 = 0;
    avg3 = 0;
    avg4 = 0;
    for i = 1:repeatSetupNb % the setup is repeated 10 times
        [train_data,train_label,test_data,test_label] = splitTrainTest(num, userIds, N);

        % fitcknn
        [Model] = fitcknn(train_data, train_label, 'NumNeighbors', 4);
        [predicted_label] = predict(Model, test_data);

        avg1 = avg1 + accuracyRate(test_label, predicted_label);

        % fitcdiscr
        [Model] = fitcdiscr(train_data, train_label);
        [predicted_label] = predict(Model, test_data);

        avg2 = avg2 + accuracyRate(test_label, predicted_label);
        
        % fitctree
        [Model] = fitctree(train_data, train_label);
        [predicted_label] = predict(Model, test_data);

        avg3 = avg3 + accuracyRate(test_label, predicted_label);
        
        % fitcnb
        if N > 2 % Try to mitigate fitcnb zero variance error
            [Model] = fitcnb(train_data, train_label);
            [predicted_label] = predict(Model, test_data);

            avg4 = avg4 + accuracyRate(test_label, predicted_label);
        end
        
    end
    % save the averages for this round
    out(N, 1) = avg1 / repeatSetupNb;
    out(N, 2) = avg2 / repeatSetupNb;
    out(N, 3) = avg3 / repeatSetupNb;
    out(N, 4) = avg4 / repeatSetupNb;
end

% display a table of the averages per N
T = array2table(out); % we convert our result into an array
T(1,:) = []; % we remove the first row for the printing
T.Properties.VariableNames = {'fitcknn_avg', 'fitcdiscr_avg', 'fitctree_avg', 'fitcnb_avg'};
T.Properties.RowNames = {'N2', 'N3', 'N4', 'N5', 'N6', 'N7'};
disp(T);

% plot the results
plot(out)
legend('fitcknn', 'fitcdiscr', 'fitctree', 'fitcnb', 'Location','southeast')

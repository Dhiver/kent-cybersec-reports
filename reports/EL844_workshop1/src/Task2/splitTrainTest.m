function [trn_dat, trn_lbl, tst_dat, tst_lbl ] = splitTrainTest(features, labels, trn_per_user)
% splits samples into Enrolment and Test sets randomly.
% features is MxN matrix where each row is the feature vector from a user
% labels is Mx1 matrix representing the user id
% trn_per_user is the number of samples per user to be assigned to the
%                    enrolment set; the remainder will be added to the test set 
%              if larger than the samples available for the user, all
%              samples of that user will be used for enrolment and none for
%              testing
%
%

user_id = unique(labels);
no_of_user = size(user_id,1);

trn_dat=[]; trn_lbl=[]; tst_dat=[]; tst_lbl=[];

for i=1:no_of_user
    idx=find(labels==user_id(i));
    order=randperm(size(idx,1));
    if trn_per_user < size(idx,1)
        trn_dat=[trn_dat; features(idx(order(1:trn_per_user)),:)];
        trn_lbl=[trn_lbl; labels(idx(order(1:trn_per_user)),:)];    
        tst_dat=[tst_dat; features(idx(order(trn_per_user+1:end)),:)];
        tst_lbl=[tst_lbl; labels(idx(order(trn_per_user+1:end)),:)];
    else
        trn_dat=[trn_dat; features(idx(:),:)];
        trn_lbl=[trn_lbl; labels(idx(:),:)];    
    end
end
    
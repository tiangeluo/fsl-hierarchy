clear all
clc
addpath('./feature');

load target_class_sample.mat
load source_target_img_name_lab.mat

%% spilt fewshot sample and test sample
test_id=1:size(F,1);
fs_num=5;supp_id=[];
F_te_pro=zeros(360,size(F,2));% target class reference
for ii=1:360
    tmp=(ii-1)*150+1:(ii-1)*150+fs_num;
    supp_id=[supp_id;tmp];
    F_te_pro(ii,:)=mean(F(tmp,:),1);
end
test_id(supp_id)=[];


X_te=F(test_id,:);
Y_te=target_label(test_id);

%%% nearest neighbor
dist  = (pdist2(X_te,F_te_pro, 'cosine')) ;  
HITK   = 5;
Y_hit5 = zeros(size(dist,1),HITK);
for i  = 1:size(dist,1)
    [sort_dist_i, I] = sort(dist(i,:));
    Y_hit5(i,:) = I(1:HITK);
end
n = 0;
for i  = 1:size(dist,1)
    if ismember(Y_te(i),Y_hit5(i,:))
        n = n + 1;
    end
end
fsl_accuracy = n/size(dist,1)

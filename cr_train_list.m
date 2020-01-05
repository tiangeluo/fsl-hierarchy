clear 
clc
root_dir='xxx'; % root dir, might be '/home/code/caffe_master'
load source_target_img_name_lab.mat
load IDX_4.mat
image_dir_train=[root_dir '/KTCH/data/source'];
tmp=randperm(200*1000);
fid=fopen('train.txt','w');
for i=1:length(source_img_name)
    imagename=[image_dir_train '/' source_img_name{tmp(i)}];
    fprintf(fid,'%s %d\n',imagename,source_label(tmp(i))-1); 
end
fclose(fid);

fid=fopen('train_1.txt','w');
for i=1:length(source_img_name)
    imagename=[image_dir_train '/' source_img_name{tmp(i)}];
    fprintf(fid,'%s %d\n',imagename,IDX(source_label(tmp(i)),1)-1); 
end
fclose(fid);

fid=fopen('train_2.txt','w');
for i=1:length(train_img_name)
    imagename=[image_dir_train '/' source_img_name{tmp(i)}];
    fprintf(fid,'%s %d\n',imagename,IDX(source_label(tmp(i)),2)-1); 
end
fclose(fid);

fid=fopen('train_3.txt','w');
for i=1:length(train_img_name)
    imagename=[image_dir_train '/' source_img_name{tmp(i)}];
    fprintf(fid,'%s %d\n',imagename,IDX(source_label(tmp(i)),3)-1); 
end
fclose(fid);

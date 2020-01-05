
    model='./ResNet-50-deploy.prototxt';
    weights=['./model/ktch.caffemodel'];
    root_dir=''; %might be '/home/code/caffe_master'
    addpath([ root_dir '/matlab']);                                         
    caffe.set_mode_gpu();  % we use gpu 
    gpu_id = 0;  % we use the first gpu 
    caffe.set_device(gpu_id);
    net1 = caffe.Net(model, weights, 'test');
    
    load('source_target_img_name_lab.mat'); % load source/target sample name
    image_dir_target='./data/target';
    F=zeros(size(target_img_name,1),2048);
    mean_data=cat(3,ones(224,224)*104,ones(224,224)*117,ones(224,224)*124);
    for i=1:size(target_img_name,1)
        im= imread([image_dir_target '/' target_img_name{i}]);
        input_data = {prepare_image(im,mean_data,256,224)};
        res1 = net1.forward(input_data);
        F(i,:)=net1.blobs('pool5').get_data();
    end        
    save(['./model/target_class_sample.mat'],'F');





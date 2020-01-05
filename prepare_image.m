function image = prepare_image(im,IMAGE_MEAN,IMAGE_DIM,CROPPED_DIM)


indices = [0 IMAGE_DIM-CROPPED_DIM] + 1;
center = floor(indices(2) / 2)+1;
images = zeros(CROPPED_DIM,CROPPED_DIM,3,'single');
im = single(im);
im = imresize(im, [IMAGE_DIM IMAGE_DIM], 'bilinear');
if size(im,3) == 1
   im = cat(3,im,im,im);
end
im = im(:,:,[3 2 1]) ;
image= permute(im(center:center+CROPPED_DIM-1,center:center+CROPPED_DIM-1,:),[2 1 3]);
image=image-IMAGE_MEAN;

%% create hierarchy

load imagenet_wordvec.mat
IDX=zeros(1000,3);
t0=kmeans([imagenet1000wordvec],200);IDX(:,1)=t0';
w2v1=zeros(200,1000);w2v2=zeros(40,1000);w2v3=zeros(8,1000);
for i=1:200
    tmp=find(t0==i);
    w2v1(i,:)=mean(imagenet1000wordvec(tmp,:),1);
end
t1=kmeans(w2v1,40);
for ii=1:40
    tmp1=find(t1==ii);
    w2v2(ii,:)=mean(w2v1(tmp1,:),1);
end
t2=kmeans(w2v2,8);
for iii=1:8
    tmp2=find(t2==iii);
    w2v3(iii,:)=mean(w2v2(tmp2,:),1);
end
IDX(:,2)=t1(t0(1:1000))';IDX(:,3)=t2(t1(t0(1:1000)))';

save('./IDX_4.mat','IDX');


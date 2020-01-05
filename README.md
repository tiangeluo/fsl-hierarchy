## Large-Scale Few-Shot Learning: Knowledge Transfer With Class Hierarchy
Created by <a href="" target="_black">Aoxue Li*</a>, <a href="https://tiangeluo.github.io/" target="_blank">Tiange Luo*</a>, <a href="" target="_blank">Zhiwu Lu</a>, <a href="http://personal.ee.surrey.ac.uk/Personal/T.Xiang/index.html" target="_blank">Tao Xiang</a>, <a href="https://scholar.google.com/citations?user=VZHxoh8AAAAJ&hl=zh-CN" target="_blank">Liwei Wang</a>

![Overview](https://github.com/tiangeluo/fsl-hierarchy/blob/master/material/overview.png)

## Usage
1. install caffe and matcaffe via https://github.com/BVLC/caffe

2. construct class hierarchy by cr_idx.m

3. obtain train images and their class/superclass labels by cr_train_list.m

4. train feature learning model by f.sh

5. feature extraction by feature_ex.m

6. label inference by the nearest neighbor search by run inference.m

## Citation
If you find our work useful in your research, please consider citing:
```
@inproceedings{li2019large,
      title={Large-Scale Few-Shot Learning: Knowledge Transfer With Class Hierarchy},
      author={Li, Aoxue and Luo, Tiange and Lu, Zhiwu and Xiang, Tao and Wang, Liwei},
      booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
      pages={7212--7220},
      year={2019}
}
```

#bin/bash

# Run code in all different datasets
set -ex

# downloading data on vm
# [ ] train 3 models on inaturalist using softmax loss
# [ ] train 4 models on cifar100 imbalance factor = 200 w softmax loss
# [ ] train 4 models on cifar100aug imbalance factor = 200 w softmax loss
# [ ] train 4 models on cifar100aug imbalance factor = 200 w bsoftmax loss
# [ ] train 4 models on cifar100 imbalance factor = 200 w bsoftmax loss

for i in {1..4}
do
# to run on vm
python train.py -c configs/config_iNaturalist_resnet50_softmax.json
#python train.py -c configs/config_cifar100_ir200_softmax.json
done
# python train.py -c configs/config_iNaturalist_resnet50_softmax.json





# Other runs:
# cifar10: 1/0.005 = 200 hard
# cifar100 1/0.01 = 100 easy

#bin/bash

# Run code in all different datasets
set -ex

# train 3 models on inaturalist using softmax
for i in {1..3}:
do
python train.py -c configs/config_iNaturalist_resnet50_softmax.json
done
# train 3 models on inaturalist using balanced softmax
# python train.py -c configs/config_iNaturalist_resnet50_softmax.json



# imbalance factor = 100
# train a cifar10  model using sade?:
# train a cifar100  model using sade?:

#python train.py -c configs/config_iNaturalist_resnet50_softmax.json


# Other runs:
# cifar10: 1/0.005 = 200 hard
# cifar100 1/0.01 = 100 easy

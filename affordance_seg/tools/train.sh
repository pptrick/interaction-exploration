# Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.

python -m affordance_seg.train_unet \
	   --data_dir affordance_seg/data/rgb/ \
	   --cv_dir affordance_seg/cv/seg_unet \
	   --train \
	   --K 818
python -m affordance_seg.train_unet \
	   --data_dir affordance_seg/data/rgb/ \
	   --cv_dir affordance_seg/cv/rgb_unet \
       --load affordance_seg/cv/rgb_unet/*.ckpt \
	   --viz \
       --K 100
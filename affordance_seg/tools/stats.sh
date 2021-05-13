python -m affordance_seg.train_unet \
	   --data_dir affordance_seg/data/rgb_train/ \
       --load affordance_seg/cv/rgb_unet/*.ckpt \
	   --stats \
       --K 14
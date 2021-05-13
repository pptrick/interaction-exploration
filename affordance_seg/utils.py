# encoding: utf-8
# author: pptrick
import numpy as np
import torch


def IOU(gt, preds):
    '''compute IoU between input groundtruth and predictions (binary mask)

    Args:
        gt (bool tensor): [C, H, W]
        preds (bool tensor): [C, H, W]; shape must be same to gt

    Returns:
        IoU (list): mean IoU of each class (len: |C|)
        if gt and preds on a certain class are all False, return None (0/0)
    '''
    assert(gt.shape == preds.shape)
    IoU = []
    for c in range(gt.shape[0]):
        I = (gt[c] & preds[c]).sum().item()
        U = (gt[c] | preds[c]).sum().item()
        if U != 0:
            IoU.append(I/U)
        else:
            IoU.append(None)
    return IoU
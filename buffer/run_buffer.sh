#!/bin/bash
export WANDB_API_KEY=b7b6ecceb6854bd12f58809f18264f979509d13b
CUDA_VISIBLE_DEVICES=9,8,7,6 python buffer_FTD.py \
--dataset=MIMIC_small \
--model=ResNet50 \
--train_epochs=50 \
--num_experts=10 \
--buffer_path=/shared/dqwang/scratch/tongchen/FTD_buffer \
--num_experts=10 \
--lr_teacher=0.0001 \
--batch_train=32 \
--decay \
--mom=0.9 \
--l2=1e-4 \
--save_interval=1 \
--rho_max=0.01 \
--rho_min=0.01 \


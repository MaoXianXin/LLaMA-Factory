#!/bin/bash
# DO NOT use quantized model or quantization_bit when merging lora weights

CUDA_VISIBLE_DEVICES=0 python ../../src/export_model.py \
    --model_name_or_path /home/mao/github_repo/LLaMA-Factory/models--Qwen--Qwen2-0.5B-Instruct/snapshots/c291d6fce4804a1d39305f388dd32897d1f7acc4 \
    --adapter_name_or_path ../../saves/Qwen2-0.5B-Instruct/lora/train_2024-09-19 \
    --template qwen \
    --finetuning_type lora \
    --export_dir ../../models/Qwen2-0.5B-sft \
    --export_size 2 \
    --export_legacy_format False

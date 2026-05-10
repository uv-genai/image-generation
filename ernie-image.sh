#!/bin/env bash
# gguf: https://huggingface.co/unsloth/ERNIE-Image-GGUF
# vae: https://huggingface.co/baidu/ERNIE-Image/tree/main/vae
# llm: https://huggingface.co/unsloth/Ministral-3-3B-Instruct-2512-GGUF
PROMPT=$(cat $1)
NEGATIVE_PROMPT=$(cat $2)
sd-cli --diffusion-model models/ernie-image/ernie-image-Q8_0.gguf \
       --vae models/ernie-image/vae/diffusion_pytorch_model.safetensors \
       --llm models/ernie-image/Ministral-3-3B-Instruct-2512-Q8_0.gguf \
       --steps 50 \
       --flow-shift 3.0 \
       --vae-on-cpu --mmap \
       -p "$PROMPT" \
       -n "$NEGATIVE_PROMPT" \
       -W 1024 -H 1024 \
       --cfg-scale 7.5 \
       --sampling-method dpm++2mv2 \
       -o out/ernie-image.png

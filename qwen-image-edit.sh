#!/usr/bin/env bash
INPUT_IMAGE=$1
PROMPT=$(cat $2)
sd-cli --diffusion-model ./models/qwen-image-edit/qwen-image-edit-2511-Q8_0.gguf \
       --vae ./models/qwen-image-edit/qwen_image_vae.safetensors \
       --llm ./models/qwen-image-edit/Qwen2.5-VL-7B-Instruct-Q8_0.gguf \
       --cfg-scale 2.5 \
       --sampling-method euler -v \
       --offload-to-cpu --diffusion-fa \
       --flow-shift 3 \
       -r $INPUT_IMAGE \
       -p $PROMPT \
       -o out/qwen-image-edit.png \
       --qwen-image-zero-cond-t

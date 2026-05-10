#!/bin/env bash
# gguf: https://huggingface.co/QuantStack/Qwen-Image-GGUF/tree/main
# vae: https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/tree/main/split_files/vae
# llm: https://huggingface.co/mradermacher/Qwen2.5-VL-7B-Instruct-GGUF/tree/main
PROMPT=$(cat $1)
NEGATIVE_PROMPT=$(cat $2)
sd-cli --diffusion-model models/qwen-image/Qwen_Image-Q8_0.gguf \
       --llm models/qwen-image/Qwen2.5-VL-7B-Instruct.Q8_0.gguf \
       --vae models/qwen-image/qwen_image_vae.safetensors \
       --mmap \
       --flow-shift 3.0 \
       --diffusion-fa \
       --steps 50 \
       --vae-on-cpu \
       -p "$PROMPT" \
       -n "$NEGATIVE_PROMPT" \
       -W 1024 -H 1024 \
       --cfg-scale 3.0 \
       --sampling-method euler \
       -o out/qwen-image.png

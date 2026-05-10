#!/bin/env bash
# gguf: https://huggingface.co/unsloth/Z-Image-GGUF
# vae: https://huggingface.co/Tongyi-MAI/Z-Image/tree/main/vae
# llm: https://huggingface.co/unsloth/Qwen3-4B-Instruct-2507-GGUF
PROMPT=$(cat $1)
NEGATIVE_PROMPT=$(cat $2)
sd-cli --diffusion-model models/Tongyi-MAI-Z-Image/z-image-Q8_0.gguf \
       --vae models/Tongyi-MAI-Z-Image/vae/diffusion_pytorch_model.safetensors \
       --llm models/Tongyi-MAI-Z-Image/Qwen3-4B-Instruct-2507-UD-Q8_K_XL.gguf \
       --steps 20 \
       --vae-on-cpu --fa \
       -p "$PROMPT" \
       -n "$NEGATIVE_PROMPT" \
       -W 1024 -H 1024 \
       --cfg-scale 4.0 \
       --sampling-method euler \
       -o out/tongy-mai-z-image.png

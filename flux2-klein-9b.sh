#!/bin/env bash
# gguf: https://huggingface.co/unsloth/FLUX.2-klein-9B-GGUF
# vae: https://huggingface.co/black-forest-labs/FLUX.2-klein-9B/tree/main/vae
# llm: https://huggingface.co/unsloth/Qwen3-8B-GGUF
PROMPT=$(cat $1)
NEGATIVE_PROMPT=$(cat $2)
sd-cli --diffusion-model models/flux-2-klein-9b/flux.2-klein-9b-q8_0.gguf \
       --vae models/flux-2-klein-9b/vae/diffusion_pytorch_model.safetensors \
       --llm models/flux-2-klein-9b/Qwen3-8B-UD-Q8_K_XL.gguf \
       --steps 50 \
       --vae-on-cpu --fa \
       -p "$PROMPT" \
       -n "$NEGATIVE_PROMPT" \
       -W 1024 -H 1024 \
       --cfg-scale 2.0 \
       --sampling-method euler \
       -o out/flux-2-klein-9b.png

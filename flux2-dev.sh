#!/bin/env bash
# gguf: https://huggingface.co/unsloth/FLUX.2-dev-GGUF
# vae: https://huggingface.co/black-forest-labs/FLUX.2-dev/tree/main/vae
# llm: https://huggingface.co/unsloth/Devstral-Small-2-24B-Instruct-2512-GGUF
PROMPT=$(cat $1)
NEGATIVE_PROMPT=$(cat $2)
sd-cli --diffusion-model models/flux-2-dev/flux2-dev-Q8_0.gguf \
       --vae models/flux-2-dev/vae/diffusion_pytorch_model.safetensors \
       --llm models/flux-2-dev/Mistral-Small-3.2-24B-Instruct-2506-Q8_0.gguf \
       --steps 10 \
       --vae-on-cpu --fa \
       -p "$PROMPT" \
       -n "$NEGATIVE_PROMPT" \
       -W 1024 -H 1024 \
       --cfg-scale 1.0 \
       --sampling-method euler \
       -o out/flux.2-dev.png

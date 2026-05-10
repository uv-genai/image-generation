#!/bin/env bash
PROMPT=$(cat $1)
NEGATIVE_PROMPT=$(cat $2)
sd-cli -m models/stable-diffusion-3.5-large/sd3.5_large.safetensors \
       --clip_l models/stable-diffusion-3.5-large/text_encoders/clip_l.safetensors \
       --clip_g models/stable-diffusion-3.5-large/text_encoders/clip_g.safetensors \
       --t5xxl models/stable-diffusion-3.5-large/text_encoders/t5xxl_fp16.safetensors \
       --mmap \
       --flow-shift 3.0 \
       --steps 50 \
       --vae-on-cpu \
       -p "$PROMPT" \
       -n "$NEGATIVE_PROMPT" \
       -W 1024 -H 1024 \
       --cfg-scale 5.0 \
       --sampling-method euler \
       -o out/sd3.5-large.png

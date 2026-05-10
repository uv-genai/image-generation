# Image generation

This project contains a list of image generation and image editing `stable-diffusion.cpp` scripts.

The directory structure is outlined below:

```
.
├── ernie-image.sh
├── flux2-dev.sh
├── flux2-klein-9b.sh
├── in
│   └── qwen_image_edit_input.png
├── models
│   ├── ernie-image
│   │   ├── ernie-image-Q8_0.gguf
│   │   ├── Ministral-3-3B-Instruct-2512-Q8_0.gguf
│   │   └── vae
│   │       └── diffusion_pytorch_model.safetensors
│   ├── flux-2-dev
│   │   ├── flux2-dev-Q8_0.gguf
│   │   ├── Mistral-Small-3.2-24B-Instruct-2506-Q8_0.gguf
│   │   └── vae
│   │       └── diffusion_pytorch_model.safetensors
│   ├── flux-2-klein-9b
│   │   ├── flux.2-klein-9b-q8_0.gguf
│   │   ├── Qwen3-8B-UD-Q8_K_XL.gguf
│   │   └── vae
│   │       └── diffusion_pytorch_model.safetensors
│   ├── qwen-image
│   │   ├── Qwen2.5-VL-7B-Instruct.mmproj-Q8_0.gguf
│   │   ├── Qwen2.5-VL-7B-Instruct.Q8_0.gguf
│   │   ├── Qwen_Image-Q8_0.gguf
│   │   └── qwen_image_vae.safetensors
│   ├── qwen-image-edit
│   │   ├── prompt-edit-1.txt
│   │   ├── Qwen2.5-VL-7B-Instruct-Q8_0.gguf
│   │   ├── qwen-image-edit-2511-Q8_0.gguf
│   │   └── qwen_image_vae.safetensors
│   ├── stable-diffusion-3.5-large
│   │   ├── sd3.5_large.safetensors
│   │   ├── text_encoders
│   │   │   ├── clip_g.safetensors
│   │   │   ├── clip_l.safetensors
│   │   │   ├── t5xxl_fp16.safetensors
│   │   │   ├── t5xxl_fp8_e4m3fn.safetensors
│   │   │   └── t5xxl_fp8_e4m3fn_scaled.safetensors
│   │   └── vae
│   │       ├── config.json
│   │       └── diffusion_pytorch_model.safetensors
│   └── Tongyi-MAI-Z-Image
│       ├── Qwen3-4B-Instruct-2507-UD-Q8_K_XL.gguf
│       ├── vae
│       │   └── diffusion_pytorch_model.safetensors
│       └── z-image-Q8_0.gguf
├── out
│   ├── ernie-image.png
│   ├── flux.2-dev.png
│   ├── flux-2-klein-9b.png
│   ├── qwen-image.png
│   ├── sd3.5-large.png
│   └── tongy-mai-z-image.png
├── prompts
│   ├── negative-prompt1.txt
│   └── prompt1.txt
├── qwen-image-edit.sh
├── qwen-image.sh
├── sd3.5-large.sh
├── tongy-mai-z-image.sh
└── tree.txt

18 directories, 45 files
```

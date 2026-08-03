#!/bin/bash

mkdir -p /app/llama.cpp/models

wget -O /app/llama.cpp/models/SmolLM2-360M-Instruct-Q4_K_M.gguf \
https://huggingface.co/tensorblock/SmolLM2-360M-Instruct-GGUF/resolve/main/SmolLM2-360M-Instruct-Q4_K_M.gguf

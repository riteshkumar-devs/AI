#!/bin/bash

cd /app/llama.cpp

if [ ! -f models/SmolLM2-360M-Instruct-Q4_K_M.gguf ]; then
    mkdir -p models
    wget -O models/SmolLM2-360M-Instruct-Q4_K_M.gguf "MODEL_DOWNLOAD_LINK"
fi

./build/bin/llama-server \
    -m models/SmolLM2-360M-Instruct-Q4_K_M.gguf \
    --host 0.0.0.0 \
    --port 10000 \
    -c 1024

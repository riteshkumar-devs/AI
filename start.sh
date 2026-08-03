#!/bin/bash

cd /app/llama.cpp

./build/bin/llama-server \
  --hf-repo HuggingFaceTB/SmolLM2-360M-Instruct-GGUF \
  --hf-file SmolLM2-360M-Instruct-Q4_K_M.gguf \
  --host 0.0.0.0 \
  --port 10000 \
  -c 512

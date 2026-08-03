#!/bin/bash

cd /app/llama.cpp

./build/bin/llama-server \
  -hf tensorblock/SmolLM2-360M-Instruct-GGUF:Q4_K_M \
  --host 0.0.0.0 \
  --port 10000 \
  -c 512

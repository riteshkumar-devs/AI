#!/bin/bash

bash /app/download-model.sh

cd /app/llama.cpp

./build/bin/llama-server \
  -m models/SmolLM2-360M-Instruct-Q4_K_M.gguf \
  --host 0.0.0.0 \
  --port 10000 \
  -c 512

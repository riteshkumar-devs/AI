#!/bin/bash

exec ./llama-server \
  --hf-repo HuggingFaceTB/SmolLM2-360M-Instruct-GGUF \
  --hf-file smollm2-360m-instruct-q4_k_m.gguf \
  --host 0.0.0.0 \
  --port 10000 \
  -c 2048 \
  -np 1

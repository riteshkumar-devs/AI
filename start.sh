#!/bin/bash

exec ./llama-server \
  --hf-repo bartowski/SmolLM2-360M-Instruct-GGUF \
  --hf-file SmolLM2-360M-Instruct-Q4_K_M.gguf \
  --host 0.0.0.0 \
  --port 10000 \
  -c 2048 \
  -np 1

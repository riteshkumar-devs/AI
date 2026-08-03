#!/bin/bash

exec ./llama-server \
  --hf-repo HuggingFaceTB/SmolLM2-360M-Instruct-GGUF \
  --hf-file smollm2-360m-instruct-q8_0.gguf \
  --host 0.0.0.0 \
  --port 10000

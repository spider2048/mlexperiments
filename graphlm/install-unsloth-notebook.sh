#!/bin/bash
set -euo pipefail

# Install uv
pip install uv --quiet

# Install unsloth
uv pip install --system --no-deps bitsandbytes accelerate xformers==0.0.29.post3 peft trl triton cut_cross_entropy unsloth_zoo
uv pip install sentencepiece protobuf "datasets>=3.4.1,<4.0.0" "huggingface_hub>=0.34.0" hf_transfer
uv pip install --system --no-deps unsloth
uv pip install --system 'transformers==4.55.4' 'trl==0.22.2'

# Remove tensorflow
uv pip uninstall --system tensorflow tensorflow-cloud tensorflow-datasets tensorflow-hub tensorflow-probability tensorflow-text tf-keras tf-slim keras

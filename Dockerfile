FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git \
    cmake \
    build-essential \
    wget \
    curl \
    libssl-dev \
    pkg-config && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Shallow clone to avoid network failure/timeouts
RUN git clone --depth 1 https://github.com/ggml-org/llama.cpp.git

WORKDIR /app/llama.cpp

# Disable CPU instruction sets that cause SIGILL on cloud instances
RUN cmake -B build \
    -DGGML_AVX=OFF \
    -DGGML_AVX2=OFF \
    -DGGML_FMA=OFF \
    -DGGML_AMX=OFF \
    -DLLAMA_OPENSSL=ON

RUN cmake --build build --config Release -j$(nproc)

WORKDIR /app

COPY . .

RUN chmod +x start.sh

EXPOSE 10000

CMD ["./start.sh"]

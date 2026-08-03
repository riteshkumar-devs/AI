FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git \
    cmake \
    build-essential \
    wget \
    curl \
    libssl-dev \
    pkg-config

WORKDIR /app

RUN git clone https://github.com/ggml-org/llama.cpp.git

WORKDIR /app/llama.cpp

RUN cmake -B build -DLLAMA_OPENSSL=ON
RUN cmake --build build -j4

WORKDIR /app

COPY . .

RUN chmod +x start.sh

EXPOSE 10000

CMD ["./start.sh"]

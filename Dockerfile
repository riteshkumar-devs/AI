FROM ghcr.io/ggml-org/llama.cpp:server

WORKDIR /app

COPY start.sh .
RUN chmod +x start.sh

EXPOSE 10000

CMD ["./start.sh"]

FROM ghcr.io/ggml-org/llama.cpp:server

WORKDIR /app

COPY start.sh .
RUN chmod +x start.sh

EXPOSE 10000

# Base image ke default entrypoint ko override karne ke liye:
ENTRYPOINT []

CMD ["/bin/sh", "/app/start.sh"]

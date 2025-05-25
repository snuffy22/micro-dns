FROM alpine:latest

WORKDIR /app

COPY dnsresolver /app/dnsresolver
COPY config.yaml /app/config.yaml
COPY zones.txt /app/zones.txt

RUN chmod +x /app/dnsresolver

ENV PORT=1053

EXPOSE 1053/udp

CMD ["./dnsresolver"]

# ---- Stage 1: build ----
    FROM golang:1.23 AS builder
    WORKDIR /app
    COPY . .
    RUN go mod tidy && CGO_ENABLED=0 GOOS=linux go build -o beego-server main.go
    
    # ---- Stage 2: run ----
    FROM debian:bullseye-slim
    WORKDIR /app
    COPY --from=builder /app/beego-server .
    EXPOSE 8080
    CMD ["./beego-server"]
    
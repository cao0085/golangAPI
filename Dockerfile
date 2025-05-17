# Dockerfile
FROM golang:1.22-alpine AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o /app/main ./cmd/api

FROM alpine:3.19
WORKDIR /app
COPY --from=builder /app/main /app/main
EXPOSE 80
CMD ["/app/main"]
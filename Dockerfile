FROM golang:latest

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux go build -o /crawler

EXPOSE 8080

CMD ["/crawler"]

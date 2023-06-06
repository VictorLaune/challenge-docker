FROM golang:latest

WORKDIR /usr/src/app

COPY go.* .

RUN go mod download 

COPY . .

EXPOSE 8080

CMD ["go", "run", "main.go"]
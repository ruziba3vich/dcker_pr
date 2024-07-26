FROM golang:1.22.5

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

WORKDIR /app/cmd

# RUN go mod download


RUN go build -o main .

CMD ["/app/cmd/main"]

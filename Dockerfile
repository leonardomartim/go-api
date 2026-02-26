FROM golang:1.23-alpine

WORKDIR /go/src/app

COPY . .

EXPOSE 8000

RUN go build -o main cmd/main.go

CMD [ "./main"]
FROM golang:1.22

WORKDIR /app

COPY ./ ./
RUN go mod download

RUN GOOS=linux GOARCH=amd64 go build -mod=readonly -v -o server

EXPOSE 8080

CMD ./server
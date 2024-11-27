FROM golang:1.18

# set working directory
WORKDIR /go/src/app

# Copy the source code
COPY . .

# expose the port
EXPOSE 8080

# build the Go app
RUN go build -o main cmd/main.go

# Run the executable
CMD ["./main"]
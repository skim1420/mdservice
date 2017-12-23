FROM golang:latest
RUN mkdir /mdservice
ADD . /mdservice
WORKDIR /mdservice
RUN go build -o main .
CMD ["/mdservice/main"]

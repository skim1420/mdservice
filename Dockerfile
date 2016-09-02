FROM golang

ADD . /go/src/github.com/skim1420/mdservice

RUN go install github.com/skim1420/mdservice

ENTRYPOINT /go/bin/mdservice

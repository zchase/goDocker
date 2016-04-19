FROM golang
 
ADD . /go/src/
RUN go install /go/src/src/server.go
ENTRYPOINT /go/bin/basic_web_server
 
EXPOSE 8080

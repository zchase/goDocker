FROM alpine:3.1

# Update
RUN apk add --update go

#Build
RUN go build -o ../bin/server
RUN go test
RUN ls

# Bundle app source
COPY . /src

EXPOSE  8080
CMD ["exec", "./bin/server 8080"]

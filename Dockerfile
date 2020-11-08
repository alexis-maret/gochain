FROM golang:1.13.4

COPY app.go .

COPY blockchain.html /

RUN go get -d -v \
 github.com/lib/pq \
    github.com/julienschmidt/httprouter

RUN go build -a a.out

EXPOSE 8000

CMD ./a.out


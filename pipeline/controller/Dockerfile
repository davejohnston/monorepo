FROM registry.hub.docker.com/library/golang:latest
COPY . /go/src/github.com/davejohnston/monorepo/controller
WORKDIR /go/src/github.com/davejohnston/monorepo/controller
ENV NONINTERACTIVE=true
ENV CGO_ENABLED=0
ENV GOOS=linux
RUN make

FROM alpine
COPY --from=0 /go/src/github.com/davejohnston/monorepo/controller/bin/controller /
EXPOSE 8083
CMD ["/controller"]

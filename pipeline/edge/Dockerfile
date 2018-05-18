FROM registry.hub.docker.com/library/golang:latest
COPY . /go/src/github.com/davejohnston/monorepo/edge
WORKDIR /go/src/github.com/davejohnston/monorepo/edge
ENV NONINTERACTIVE=true
ENV CGO_ENABLED=0
ENV GOOS=linux
RUN make

FROM alpine
COPY --from=0 /go/src/github.com/davejohnston/monorepo/edge/bin/edge /
EXPOSE 8084
CMD ["/edge"]

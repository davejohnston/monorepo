FROM registry.hub.docker.com/library/golang:latest
COPY . /go/src/github.com/davejohnston/monorepo/database
WORKDIR /go/src/github.com/davejohnston/monorepo/database
ENV NONINTERACTIVE=true
ENV CGO_ENABLED=0
ENV GOOS=linux
RUN make

FROM alpine
COPY --from=0 /go/src/github.com/davejohnston/monorepo/database/bin/database /
EXPOSE 8082
CMD ["/database"]

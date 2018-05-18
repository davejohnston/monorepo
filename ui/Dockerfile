FROM registry.hub.docker.com/library/golang:latest
COPY . /go/src/github.com/davejohnston/monorepo/ui
WORKDIR /go/src/github.com/davejohnston/monorepo/ui
ENV NONINTERACTIVE=true
ENV CGO_ENABLED=0
ENV GOOS=linux
RUN make

FROM alpine
COPY --from=0 /go/src/github.com/davejohnston/monorepo/ui/bin/ui /
EXPOSE 8081
CMD ["/ui"]

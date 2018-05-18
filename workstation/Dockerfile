FROM registry.hub.docker.com/library/golang:latest
COPY . /go/src/github.com/davejohnston/monorepo/workstation
WORKDIR /go/src/github.com/davejohnston/monorepo/workstation
ENV NONINTERACTIVE=true
ENV CGO_ENABLED=0
ENV GOOS=linux
RUN make

FROM alpine
COPY --from=0 /go/src/github.com/davejohnston/monorepo/workstation/bin/workstation /
EXPOSE 8085
CMD ["/workstation"]

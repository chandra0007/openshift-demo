FROM golang:1.20.4 as builder
ENV SOURCES_DIR /go/src/github.com/prb112/openshift-demo/mutating

USER 0
RUN mkdir -p ${SOURCES_DIR}
COPY . ${SOURCES_DIR}

RUN cd ${SOURCES_DIR} \
    && make build
USER 1001

FROM registry.access.redhat.com/ubi9/ubi-minimal:9.2-484

RUN microdnf update -y \
    && microdnf install -y shadow-utils \
    && groupadd -r -g 10001 mac-group \
    && useradd -r -u 10001 -g mac-group -m -d /home/mac-user -s /sbin/nologin mac-user

COPY --from=builder /go/src/github.com/prb112/openshift-demo/mutating/bin/mac-mutating /
USER mac-user

ENTRYPOINT ["/mac-mutating"]
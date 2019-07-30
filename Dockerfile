# Dockerfile

FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION v2.14.3

RUN curl -sL https://storage.googleapis.com/kubernetes-helm/helm-${VERSION}-linux-amd64.tar.gz | tar xz && \
    mv linux-amd64/helm /usr/local/bin/helm

ENTRYPOINT ["bash"]

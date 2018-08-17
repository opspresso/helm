# Dockerfile

FROM python:slim

RUN apt-get update && \
    apt-get install -y git curl zip jq

RUN HELM=$(curl -s https://api.github.com/repos/helm/helm/releases/latest | jq -r '.tag_name') && \
    curl -sL https://storage.googleapis.com/kubernetes-helm/helm-${HELM}-linux-amd64.tar.gz | tar xz && \
    mv linux-amd64/helm /usr/local/bin/helm

ENTRYPOINT ["bash"]

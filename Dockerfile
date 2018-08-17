# Dockerfile

FROM python:slim

RUN apt-get update && \
    apt-get install -y curl

RUN HELM=$(curl -s https://api.github.com/repos/helm/helm/releases/latest | grep tag_name | cut -d'"' -f4) && \
    curl -sL https://storage.googleapis.com/kubernetes-helm/helm-${HELM}-linux-amd64.tar.gz | tar xz && \
    mv linux-amd64/helm /usr/local/bin/helm

ENTRYPOINT ["bash"]

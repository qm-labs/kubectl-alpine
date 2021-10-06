FROM rancher/kubectl:v1.22.2 AS kubectl
FROM alpine:3.14

COPY --from=kubectl /bin/kubectl /bin/kubectl

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.vcs-url="https://github.com/qm-labs/kubectl-alpine"

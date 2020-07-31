ARG image_tag
FROM python:${image_tag}

ARG grpcio_version
RUN apk --no-cache add --virtual .build-deps build-base libffi-dev && \
    pip install grpcio==${grpcio_version} && \
    apk --no-cache del --purge .build-deps

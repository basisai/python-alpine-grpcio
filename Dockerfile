FROM python:3.8.2-alpine3.11

RUN apk add --no-cache \
  # required by grpc
  g++ \
  musl-dev \
  libffi-dev

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt \
  && rm requirements.txt \
  && apk del \
    g++ \
    musl-dev \
    libffi-dev

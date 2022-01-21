FROM python:3.10.2-alpine3.15

RUN apk add --no-cache \
  # required by grpc
  g++ \
  musl-dev \
  libffi-dev

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt \
  # Clean up
  && rm requirements.txt \
  && apk del \
  g++ \
  musl-dev \
  libffi-dev

FROM python:3.8.10-alpine3.13

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

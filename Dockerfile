FROM python:3.9.3-alpine3.12

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

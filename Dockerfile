FROM python:3.7.6-alpine3.11

RUN apk add --no-cache \
  # required by grpc
  g++

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt \
  && rm requirements.txt \
  && apk del g++

FROM python:3.10-slim

WORKDIR /app
COPY . /app

RUN apt-get update \
    && apt-get install -y awscli \
    && rm -rf /var/lib/apt/lists/*

CMD ["python", "app.py"]

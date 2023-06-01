FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y curl

WORKDIR /app

COPY check_response.sh /app

RUN chmod +x /app/check_response.sh

CMD ["/app/check_response.sh"]

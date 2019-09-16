FROM ubuntu:18.04

WORKDIR /app

RUN apt update && apt install -y expect wget pv tar unzip xz-utils

RUN chmod 0777 /app

RUN groupadd -g 1000 appuser && \
    useradd -r -u 1000 -g appuser appuser
RUN chown -R appuser /app

USER appuser

RUN wget https://github.com/n42k/brikkit/releases/download/v1.0.2/Brikkit_v1.0.2.zip

RUN unzip Brikkit_v1.0.2.zip
RUN rm Brikkit_v1.0.2.zip

CMD ["/app/brikkit"]

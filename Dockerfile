FROM alpine:latest

ARG PASSWORD

RUN \
    echo $PASSWORD > /tmp/test.txt && \
    cat /tmp/test.txt

ENTRYPOINT sh

CMD ["sleep", "60"]

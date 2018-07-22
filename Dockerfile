FROM alpine:3.8

RUN apk add --no-cache mongodb

EXPOSE 27017 27017

COPY run.sh /root
ENTRYPOINT [ "/root/run.sh" ]
CMD [ "mongod", "--bind_ip", "0.0.0.0" ]

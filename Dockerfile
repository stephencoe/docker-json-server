FROM mhart/alpine-node

MAINTAINER Stephen Coe <stephen@madebybox.co.uk>

RUN npm install -g json-server

WORKDIR /data
VOLUME /data

EXPOSE 80
ADD run.sh /run.sh
ENTRYPOINT ["sh", "/run.sh"]
CMD []

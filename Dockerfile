FROM gliderlabs/alpine:3.3

VOLUME /mnt/routes
EXPOSE 80

COPY . /src
RUN cd /src && apk-install curl && ./build.sh "$(cat VERSION)"

ONBUILD COPY ./build.sh /src/build.sh
ONBUILD COPY ./modules.go /src/modules.go
ONBUILD RUN cd /src && ./build.sh "$(cat VERSION)-custom"

CMD ["/src/run.sh"]

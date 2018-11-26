FROM alpine:3.8

RUN apk add --no-cache --virtual .build-deps \
    autoconf \
    automake \
    build-base \
    curl \
    git \
    libtool \
    zip \
 && git clone https://github.com/grpc/grpc-web.git /github/grpc-web \
 && cd /github/grpc-web && ./scripts/init_submodules.sh \
 && cd /github/grpc-web/third_party/grpc/third_party/protobuf && ./autogen.sh && ./configure && make -j8 && make install \
 && cd /github/grpc-web && make install-plugin \
 && rm -rf /github \
 && apk del .build-deps \
 && apk add --no-cache libstdc++

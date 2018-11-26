# docker-grpc-web

- https://grpc.io
- https://github.com/grpc/grpc-web
- https://gitlab.com/travismiller/docker-grpc-web

```console
$ docker run -it --rm -w/app -v"$(pwd):/app" puckbag/grpc-web protoc -I=$DIR echo.proto \
    --js_out=import_style=commonjs:$OUT_DIR \
    --grpc-web_out=import_style=commonjs,mode=grpcwebtext:$OUT_DIR
```

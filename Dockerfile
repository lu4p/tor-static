FROM lu4p/xcgo:latest

RUN apt-get update && apt-get install -y tor upx && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /go/pkg/mod/github.com/cretz/tor-static

#get linux libs
RUN cd /go/pkg/mod/github.com/cretz/tor-static  && wget https://github.com/lu4p/tor-static/releases/download/linux/libs_linux.tar.gz

#get windows libs
RUN cd /go/pkg/mod/github.com/cretz/tor-static  && wget https://github.com/lu4p/tor-static/releases/download/2/tor-static-windows-amd64.zip
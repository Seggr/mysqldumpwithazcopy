FROM alpine:3.9

RUN apk add --no-cache mysql-client
RUN apk add curl
RUN curl -L https://aka.ms/downloadazcopy-v10-linux -o azcopy.tar.gz && \
    tar xvzf azcopy.tar.gz --strip-components=1 && rm azcopy.tar.gz
ENTRYPOINT ["crond", "-f"]

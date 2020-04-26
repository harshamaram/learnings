FROM nginx:1.17.1-alpine
RUN     apk update && \
        apk upgrade && \
        apk add bash

COPY static /usr/share/nginx/html
COPY opc-one.crt /etc/ssl/certs
COPY opc-one.key /etc/ssl/private
COPY default.conf /etc/nginx/conf.d


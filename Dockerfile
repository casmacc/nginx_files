FROM nginx:alpine

RUN apk update
RUN apk add bash
RUN apk add vim
RUN rm -rf /usr/share/nginx/html
RUN mkdir -p /usr/share/nginx/files

COPY config/default.conf /etc/nginx/conf.d

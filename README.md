# nginx

Nginx for Static Assets

HTML is served on port 80.  Files are served on port 8088.

## Container Paths

HTML stored in `/usr/share/nginx/html`.

Files stored in `/usr/share/nginx/files`.

NGINX configuration stored in `/etc/nginx/nginx.conf`.

HTML configuration stored in `/etc/nginx/conf.d/default.conf`.

File configuration stored in `/etc/nginx/conf.d/files.conf`.

## Building

    $ docker build . -t casmacc/nginx

## Running

    $ docker run -p 80:80 -p 8088:8088 casmacc/nginx

## Inspecting

    $ # get name of container
    $ docker ps
    $ # start bash session
    $ docker exec -it <container_name> /bin/bash

## Using Hosts's HTML directory

    $ docker run -p 80:80 -v $PWD/html:/usr/share/nginx/html casmacc/nginx


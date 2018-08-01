#!/usr/bin/env bash

#Frontal Proxy
#docker run -d -p 80:80 -p 443:443 --restart always \
#       --name nginx-proxy \
#       -v /data/certs:/etc/nginx/certs:ro \
#       -v /etc/nginx/vhost.d \
#       -v /usr/share/nginx/html \
#       -v /var/run/docker.sock:/tmp/docker.sock:ro \
#       --label com.github.jrcs.letsencrypt_nginx_proxy_companion.nginx_proxy \
#       jwilder/nginx-proxy

#companion for subs & renew
#docker run -d --restart always \
#       --name nginx-proxy-companion \
#       -v /data/certs:/etc/nginx/certs:rw \
#       -v /var/run/docker.sock:/var/run/docker.sock:ro \
#       --volumes-from nginx-proxy \
#           jrcs/letsencrypt-nginx-proxy-companion



docker-compose up -d

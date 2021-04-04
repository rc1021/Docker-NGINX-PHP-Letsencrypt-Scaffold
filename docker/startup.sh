#!/bin/sh

(crontab -l && echo "0 12 * * * /usr/bin/certbot renew --quiet") | crontab -

sed -i "s,LISTEN_PORT,$PORT,g" /etc/nginx/nginx.conf

/usr/bin/supervisord -c /app/docker/supervisord.conf

#!/bin/sh

(crontab -l && echo "0 12 * * * /usr/bin/certbot renew --quiet") | crontab -

/usr/sbin/crond

/usr/bin/supervisord -c /app/docker/supervisord.conf

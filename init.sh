#!/usr/bin/env bash
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
# sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn stop
sudo gunicorn -b 0.0.0.0:8080 -c etc/gunicorn.conf hello:app
# sudo /etc/init.d/mysql start

#!/usr/bin/env bash
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn-wsgi.conf /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
sudo /etc/init.d/mysql start

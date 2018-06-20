#!/bin/bash

key="$1"

# a good idea is to place the path outside one accessible for serving on the web
# and also make the filename more gibberishly, even random, for each site

case $key in
    -m|--maintenance)
    touch /var/www/example.com/maintenance.m
    ;;
    -p|--production)
    rm /var/www/example.com/maintenance.m
    ;;
esac

#!/bin/sh

gunicorn nginx_server.wsgi:application --bind 0.0.0.0:8000
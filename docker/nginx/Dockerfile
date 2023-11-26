FROM nginx:latest
# faster upload to docker
#FROM nginx:1.19.0-alpine

SHELL ["/bin/bash", "-c"]

# for testing
RUN apt update && apt upgrade && apt -qy install sudo iputils-ping

RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/conf.d/
COPY proxy_params /etc/nginx/
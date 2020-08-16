FROM nginx:latest

MAINTAINER AmirHosein Nematzadeh <me@amirhne.me>

RUN rm -f /etc/nginx/conf.d/default.conf

COPY ./nginx_config /etc/nginx/conf.d/
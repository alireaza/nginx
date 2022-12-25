FROM nginx:1.22.1-alpine

COPY conf.d /etc/nginx/conf.d

HEALTHCHECK --start-period=5s --timeout=5s --interval=5s --retries=5 CMD curl --silent --fail --resolve 'nginx.health:80:127.0.0.1' nginx.health | grep 'Healthy' || exit -1

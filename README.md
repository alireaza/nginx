# Nginx

## Build
Via GitHub repository
```bash
$ docker build --tag alireaza/nginx:$(date -u +%Y%m%d) --tag alireaza/nginx:latest https://github.com/alireaza/nginx.git
```

## Run
```bash
$ docker run \
--interactive \
--tty \
--rm \
--env="TZ=$(cat /etc/timezone)" \
--mount="type=bind,source=$(pwd)/src,target=/var/www/html" \
--publish="80:80" \
--name="nginx" \
alireaza/nginx
```


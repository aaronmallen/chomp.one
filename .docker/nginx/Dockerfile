FROM nginx:1.19-alpine
ARG APP_SERVICE
ARG HOST_ADDRESS
ARG RAILS_PORT
ENV APP_SERVICE=$APP_SERVICE \
    HOST_ADDRESS=$HOST_ADDRESS \
    RAILS_PORT=$RAILS_PORT \
    RAILS_ROOT=/var/www/chomp
WORKDIR $RAILS_ROOT
RUN mkdir log
COPY public public/
COPY .docker/nginx/nginx.conf /tmp/docker.nginx
RUN envsubst '${APP_SERVICE},${HOST_ADDRESS},${RAILS_PORT},${RAILS_ROOT}' < /tmp/docker.nginx > /etc/nginx/conf.d/default.conf

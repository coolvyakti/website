# Dockerfile for sample PHP web application
FROM webdevops/php-nginx:latest

# copy PHP code to the container
COPY ./website ${WEB_DOCUMENT_ROOT}

# copy the vhost.conf to the container
COPY ./vhost.conf ${DOCKER_CONF_HOME}/etc/nginx/vhost.conf

# expose port 88
EXPOSE 88

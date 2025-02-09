FROM ubuntu:25.04
RUN apt update -y && apt install nginx -y
ADD . /var/www/html/
CMD nginx -g "daemon off;" 
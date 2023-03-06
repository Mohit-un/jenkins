FROM ubuntu
RUN apt update && apt install apache2 -y && rm -f /var/www/html/index.html
COPY . /var/www/html/
CMD apachectl -D FOREGROUND

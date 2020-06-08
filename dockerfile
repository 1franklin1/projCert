FROM devopsedu/webapp
MAINTAINER Franklin
ADD website /var/www/html
RUN rm /var/www/html/index.html
CMD yum install httpd -y
CMD systemctl start httpd
CMD apachectl -D FOREGROUND

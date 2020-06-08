FROM devopsedu/webapp
MAINTAINER Franklin
ADD website /var/www/html
RUN rm /var/www/html/index.html
RUN yum install httpd -y
CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
EXPOSE 80

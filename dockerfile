FROM centos:latest
RUN yum install httpd -y
WORKDIR /var/www/html
RUN echo "Hello" > index.html
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -D FOREGROUND

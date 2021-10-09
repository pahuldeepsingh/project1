FROM centos:latest
RUN yum install httpd
WORKDIR /var/www/html
RUN echo "Hello" > index.html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

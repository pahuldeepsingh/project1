FROM centos:latest
RUN yum install httpd
WORKDIR /var/www/html
RUN echo "Hello" > index.html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

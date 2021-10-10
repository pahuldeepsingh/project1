FROM centos:latest
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/cosmix.zip /var/www/html
WORKDIR /var/www/html/
RUN unzip cosmix.zip
RUN rm -rf cosmix.zip &&\
    cp -rf cosmix/* . &&\
    rm -rf cosmix
    mkdir gaurav &&\
    touch gaurav/saluja
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

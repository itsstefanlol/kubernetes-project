FROM centos:latest
MAINTAINER stefanpopov2409@gmail.com
RUN apt install –y apache2 
RUN apt install –y apache2-utils 
RUN yum install -y zip
RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd" "-D", "FOREGROUND"]
EXPOSE 80 22
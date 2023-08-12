FROM ubuntu 
RUN apt update 
RUN apt install apache2 -y
RUN apt install apache2-utils -y
RUN rm -r /var/www/html/index.html
COPY . /var/www/html

RUN apt clean 
EXPOSE 80

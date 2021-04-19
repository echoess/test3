FROM scratch
ADD ./rootfs.tar.xz / 
RUN  apt-get update && apt-get -y install nginx
COPY ./nginx.conf  /etc/nginx/nginx.conf
COPY ./index.html /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]

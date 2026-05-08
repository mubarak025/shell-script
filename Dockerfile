# the docker file from nginx

FROM nginx

WORKDIR /app

copy index.html /usr/share/nginx/html 

EXPOSE 80 




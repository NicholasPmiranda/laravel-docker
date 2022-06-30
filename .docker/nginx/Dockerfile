FROM nginx:1.15.0-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/conf.d
COPY . /var/www/html
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 8000


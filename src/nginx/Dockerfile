FROM nginx
COPY ./src/nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
RUN mkdir -p /etc/nginx/sites-enabled/\
    && ln -s /etc/nginx/sites-available/my_nginx.conf /etc/nginx/sites-enabled/\
    && rm /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]

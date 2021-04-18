FROM repository.dimas-maryanto.com:8086/nginx:1.19-alpine
COPY ./dist/${APP_NAME} /usr/share/nginx/html
EXPOSE 80

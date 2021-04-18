FROM repository.dimas-maryanto.com:8086/nginx:1.19-alpine

ARG APP_NAME
COPY ./dist/${APP_NAME} /usr/share/nginx/html
EXPOSE 80

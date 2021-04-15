FROM repository.dimas-maryanto.com:8086/node:14-alpine3.11 as node-lts

COPY . /source
WORKDIR /source

RUN npm install
RUN node ./node_modules/@angular/cli/bin/ng build \
--prod  \
--aot \
--build-optimizer \
--extract-css \
--extract-licenses \
--vendor-chunk=true

FROM repository.dimas-maryanto.com:8086/nginx:1.19-alpine
COPY --from=node-lts /source/dist/angular-dockerize /usr/share/nginx/html
EXPOSE 80

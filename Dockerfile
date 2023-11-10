FROM node:12-alpine as BUILDER
WORKDIR /home/node/app
COPY ${PWD} /home/node/app

RUN cd /home/node/app \
  && npm install \
  && npm run build \
  && mv dist /home/node/dist-h5

FROM nginx:1-alpine

COPY deploy/nginx/default.conf /etc/nginx/conf.d/
COPY --from=BUILDER /home/node/dist-h5 /html/h5

EXPOSE 80

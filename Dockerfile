FROM nginx:latest

ADD https://download.elasticsearch.org/kibana/kibana/kibana-3.1.2.tar.gz /tmp/kibana.tar.gz

WORKDIR /tmp

RUN \
  gunzip /tmp/kibana.tar.gz \
  && tar -xf /tmp/kibana.tar \
  && rm -f /tmp/kibana.tar.gz \
  && mv /tmp/kibana-*/* /usr/share/nginx/html \
  && mkdir /kibana \
  && mv /usr/share/nginx/html/config.js /kibana \
  && ln -s /kibana/config.js /usr/share/nginx/html/config.js

EXPOSE 80

FROM kyma/docker-nginx
RUN apt-get update
RUN apt-get install -y --force-yes openssl
ADD openssl.cnf /tmp/openssl.cnf
RUN openssl req -subj "/C=HU/ST=Budapest/L=Budapest/O=BestOrg/CN=www.localhost.lh" -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.crt -config /tmp/openssl.cnf
RUN ln -s /etc/nginx/sites-available/default-ssl /etc/nginx/sites-enabled/default-ssl
RUN sed -i 's/server {/server {\n    autoindex on;/' /etc/nginx/sites-enabled/default
RUN sed -i 's/server {/server {\n    autoindex on;/' /etc/nginx/sites-enabled/default-ssl
CMD 'nginx'

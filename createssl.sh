openssl req -subj "/C=HU/ST=Budapest/L=Budapest/O=Dis/CN=www.localhost.lh" -x509 -nodes -days 365 -newkey rsa:2048 -keyout myserver.key -out myserver.crt -config openssl.cnf

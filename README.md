./createssl.sh

docker run -ti -rm -v $PWD:/var/www -p 80:80 -p 443:443 ajnasz/nginx

curl http://localhost/file.txt
curl -k https://localhost/file.txt

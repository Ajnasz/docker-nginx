```
$ git clone https://github.com/Ajnasz/docker-nginx

$ cd docker-nginx
$ docker build -t staticserve .
$ cd /path/to/my/static/files
$ docker run -ti --rm -v $PWD:/var/www -p 80:80 -p 443:443 staticserve
$ curl http://localhost/file.txt # get file from http
$ curl -k https://localhost/file.txt # get file from https
```

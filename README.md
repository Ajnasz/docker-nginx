```
$ git clone https://github.com/Ajnasz/docker-nginx

$ cd docker-nginx

$ ./createssl.sh
```

... answering questions (pressing enters if its ok for you)

```
$ docker build -t staticserve .

$ cd /path/to/my/static/files

$ docker run -ti --rm -v $PWD:/var/www -p 80:80 -p 443:443 staticserve

$ curl http://localhost/file.txt
$ curl -k https://localhost/file.txt
```

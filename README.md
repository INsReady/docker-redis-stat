## Supported tags and respective `Dockerfile` links

-	[`latest` (*Dockerfile*)](https://github.com/INsReady/docker-redis-stat/blob/master/Dockerfile)

This image is updated via pull requests to [the `INsReady/docker-polymer-dev` GitHub repo](https://github.com/INsReady/docker-redis-stat).

## What is image for?
This image is for the real-time Redis monitoring tool [redis-stat](https://github.com/junegunn/redis-stat).
![redis-stat screenshot](https://github.com/junegunn/redis-stat/raw/master/screenshots/redis-stat-web.png)

## How to use this image?

### Show the redis stats from a redis docker container

```console
$ docker run --name redis-stat --link some-redis:redis -d -p 8080:63790 insready/redis-stat --server redis
```


### Show the redis stats from a remote redis server

```console
$ docker run --name redis-stat -d -p 8080:63790 insready/redis-stat --server 123.123.123.123
```


### Show the redis stats from multiple servers

```console
$ docker run --name redis-stat -d -p 8080:63790 insready/redis-stat --server 111.111.111.111 222.222.222.222:63790 123.123.123.123
```

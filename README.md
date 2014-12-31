# Docker apt-cacher-ng

## Background
Run apt-cacher-ng in a docker container.  This is great for developing docker images.  You only pull the packages once.

## Options
* ```-p 3142:3142``` - apt-cacher-ng UI

## Example
```
docker run -d -p 3142:3142 itsamenathan/apt-cacher-ng
```
* You can see apt-cacher-ng running on http://localhost:3142/
* Add ```RUN  echo 'Acquire::http { Proxy "http://HOSTIP:3142"; };' >> /etc/apt/apt.conf.d/01proxy``` do your Dockerfile.
** Note: Don't use localhost, use the IP of your host machine.

## Building

To build the image, do the following:

```
docker build -t itsamenathan/apt-cacher-ng .
```

## Thanks
[Docker.io example](https://docs.docker.com/examples/apt-cacher-ng/) - Used as outline for my image

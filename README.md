## Docker-OpenNTPD

This container starts a OpenNTPD server to serve time.

### To run the container:

```
docker run -p 123:123/udp --privileged=true cyprien/openntpd
```

It will:
 * serve time to every network interface
 * adjust local host time

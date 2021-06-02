# Ubiquiti Networks Unifi Controller

Example:
```
podman pull quay.io/behoward/unifi
podman volume create unifi
podman create \
  -e UNIFI_UID=$(id -u unifi) \
  -e JVM_MAX_HEAP_SIZE=1024m \
  -e TZ='America/Denver' \
  --privileged \
  --net 193net --ip 192.168.3.5 \
  -v unifi:/opt/unifi \
  --name unifi quay.io/behoward/unifi
```

## Version

In general, I try to track the latest, currently 6.2.x.

## See upstream

This is my personal fork. [Please see Mr. Joe Doss' work](https://github.com/jdoss/unifi)

## Why fork

I wanted to stash my configuration in the public. I use a seperate network, 192.168.3.0/24 for my home network infra containers, so I run it a bit differently. Further, I run my controller full time.

## License

The MIT License

Copyright (c) 2019 Joe Doss
Copyright (c) 2020 Ben Howard

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

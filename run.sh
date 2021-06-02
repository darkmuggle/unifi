podman create \
  -e UNIFI_UID=$(id -u unifi) \
  -e JVM_MAX_HEAP_SIZE=1024m \
  -e TZ='America/Denver' \
  --privileged \
  --net 193net --ip 192.168.3.5 \
  -v /opt/unifi.next/data:/opt/unifi/data:Z \
  -v /opt/unifi.next/logs:/opt/unifi/logs:Z \
  -v /opt/unifi.next/run:/opt/unifi/run:Z \
  --name unifi.next localhost/unifi-6.2

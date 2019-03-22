#!/bin/bash
rm -rf /etc/systemd/system/docker.service.d
mkdir -p  /etc/systemd/system/docker.service.d

cat >  /etc/systemd/system/docker.service.d/proxy.conf << eof
[Service]
Environment="HTTPS_PROXY=http://127.0.0.1:39237" HTTP_PROXY="http://127.0.0.1:39237" "NO_PROXY=localhost,127.0.0.1,172.252.6.6,10.0.48.62"
eof

systemctl daemon-reload
systemctl restart docker

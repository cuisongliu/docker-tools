import os
commond = [
            'kubeadm reset -f',
            'modprobe -r ipip',
            'lsmod',
            'rm -rf ~/.kube/',
            'rm -rf /etc/kubernetes/',
            'rm -rf /etc/systemd/system/kubelet.service.d',
            'rm -rf /etc/systemd/system/kubelet.service',
            'rm -rf /usr/bin/kube*',
            'rm -rf /usr/bin/crictl',
            'rm -rf /etc/cni',
            'rm -rf /opt/cni',
            'rm -rf /var/lib/etcd',
            'rm -rf /etc/keepalived',
            'rm -rf /etc/haproxy',
            'rm -rf /var/etcd',
            'rm -rf /root/kube-proxy.yaml',
            'rm -rf /tmp/*'
]
for i in commond:
    os.system("sudo "+i)
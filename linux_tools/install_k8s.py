import os
commond = [
            'cd /home/cuisongliu/Documents/kubernetes-doc/kube/shell && sudo sh init.sh && sudo sh master.sh',
            'mkdir -p $HOME/.kube',
            'sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config',
            'sudo chown $(id -u):$(id -g) $HOME/.kube/config'
        ]
for i in commond:
    os.system(i)
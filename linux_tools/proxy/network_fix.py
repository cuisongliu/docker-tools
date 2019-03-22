import os
commond = [
            'route del -net 172.252.0.0 netmask 255.255.0.0 gw 192.0.6.1 dev eth0',
            'route del -net 192.0.6.0 netmask 255.255.255.0 gw 192.0.6.1 dev eth0',
            'route add -net 172.252.0.0 netmask 255.255.0.0 gw 192.0.6.1 dev eth0',
            'route add -net 192.0.6.0 netmask 255.255.255.0 gw 192.0.6.1 dev eth0'
]
# 内外网同时上网策略路由
# 内网不设置网关，外网自动
for i in commond:
    os.system("sudo "+i)
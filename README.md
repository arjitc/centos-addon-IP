# centos-addon-IP
Addon IP config writer for CentOS

How to use,

    wget https://raw.githubusercontent.com/arjitc/centos-addon-IP/master/add_ip.sh
    chmod a+x add_ip.sh
    sh add_ip.sh INTERFACE IP_ADDRESS GATEWAY NETMASK
  
Example,

* INTERFACE = eth0:0, eth0:1, eth0:2 etc
* IP_ADDRESS = 192.168.0.2
* GATEWAY = 192.168.0.1
* NETMASK = 255.255.255.0

So the command would be,

    sh add_ip.sh eth0:0 192.168.0.2 192.168.0.1 255.255.255.0

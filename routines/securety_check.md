<!--
File          : security_policy.md

Created       : Mon 09 Nov 2015 23:45:05
Last Modified : Mon 16 Nov 2015 20:55:56
Maintainer    : sharlatan
-->
# update #

__rpm__
    
    #: yum update

__deb__

    #: apt-get update

# limit user #
Try not to use __root__ user for daily use.
    
    
    #: useradd <user_name> && passwd <enter_password>

    #: visudo
        ## Allows people in group wheel to run all commands
        wheel   ALL=(ALL)   ALL
        :wq

    #: usermod -aG wheel <user_name>

# SSH #

*   use key-chain for access;
    
    $: ssh-keygen -t rsa -C "<some_comments>" -f <file_name>
    $: ssh-copy-id -i identity_file.pub user_name@ip.adress.to_your.server

*   block __root__ login and password auth;
    
    #: vim /etc/ssh/sshd_config
        PermitRootLogin no
        PasswordAuthentication no
        :wq

    #: systemctl restart sshd
    
# fail2ban #

# block ping #

# iptable #


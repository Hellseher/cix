<!--
File          : security_policy.md

Created       : Mon 09 Nov 2015 23:45:05
Last Modified : Mon Jun 06 2016 00:26:58 sharlatan
Maintainer    : sharlatan
-->
# main #
Some basic security tips for VPS webserver

## Updates ##
Try to keep your system updated with latest security bug fixes. It is a minimal
what you can do for protection.

For [rpm|deb] based distributions try to use one of these methods for security
updates.
__rpm__

    # yum update --security
    # dnf updateinfo list security

__deb__

    # apt-get update
    # apt update

You can add __yum|apt-get update__ to your cron

## add limited admin user ##
As a general rule, try not run commands (daily routines) under root,
create a separate user for sysadmin tasks and give him sudo rights.

    # useradd <user_name> && passwd <enter_password>
    # visudo
        ## Allows people in group wheel to run all commands
        wheel   ALL=(ALL)   ALL
        :wq
    # usermod -aG wheel <user_name>

# networking #

## SSH ##

*   use key-chain for access;
    
    $: ssh-keygen -t rsa -C "<some_comments>" -f <file_name>
    $: ssh-copy-id -i identity_file.pub user_name@ip.adress.to_your.server

*   block __root__ login and password auth;
    
    # vim /etc/ssh/sshd_config
        PermitRootLogin no
        PasswordAuthentication no
        :wq
    # systemctl restart sshd
    
## fail2ban ##
## firewall ##

## block ping ##

## iptable ##


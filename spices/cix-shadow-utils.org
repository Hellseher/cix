<!--
File          : shadow-utils.md
Created       : Tue May 03 2016 00:09:23
Last Modified : Thu 11 Aug 2016 00:02:01 sharlatan
Author        : sharlatan <sharlatanus@gmail.com>
Maintainer(s) - : sharlatan
-->

[[≣](../README.md#Index "Index")]
[[↷](http://pkg-shadow.alioth.debian.org/)]
# Sadow utils

|     |     |
| --- | --- |
| __Author__ |  |
| __Maintainers__ |Tomasz Kłoczko, Nicolas François |
| | |
| __Realised__ | 2005  |
| __Source__ | [pkg-shadow](https://anonscm.debian.org/git/pkg-shadow/shadow.git) |

The  shadow-utils   package  includes   the  necessary   programs  for
converting UNIX  password files  to the  shadow password  format, plus
programs  for managing  user and  group accounts.  The pwconv  command
converts passwords to the shadow password format. The pwunconv command
unconverts shadow  passwords and generates  a passwd file  (a standard
UNIX  password  file).   The  pwck command  checks  the  integrity  of
password and  shadow files.  The  lastlog command prints out  the last
login times for all users.  The useradd, userdel, and usermod commands
are  used for  managing  user accounts.  The  groupadd, groupdel,  and
groupmod commands are used for managing group accounts.

    chage (1)      -	change user password expiry information
    chfn (1)       -	change real user name and information
    chsh (1)       -	change login shell
    expiry (1)     -	check and enforce password expiration policy
    gpasswd (1)    -	administer the /etc/group file
    login (1)      -	begin session on the system
    newgrp (1)     -	log in to a new group
    passwd (1)     -	change user password
    sg (1)         -	execute command as different group ID
    su (1)         -	change user ID or become superuser
    faillog (5)    -	login failure logging file
    gshadow (5)    -	shadowed group file
    login.defs (5) -	shadow password suite configuration
    passwd (5)     -	the password file
    shadow (5)     -	encrypted password file
    chgpasswd (8)  -	update group passwords in batch mode
    chpasswd (8)   -	update passwords in batch mode
    faillog (8)    -	display faillog records or set login failure limits
    groupadd (8)   -	create a new group
    groupdel (8)   -	delete a group
    groupmod (8)   -	modify a group definition on the system
    grpck (8)      -	verify integrity of group files
    grpconv (8)    -	convert to and from shadow passwords and groups
    grpunconv (8)  -	convert to and from shadow passwords and groups
    lastlog (8)    -	reports the most recent login of all users or of a given user
    newusers (8)   -	update and create new users in batch
    nologin (8)    -	politely refuse a login
    pwck (8)       -	verify integrity of password files
    pwconv (8)     -	convert to and from shadow passwords and groups
    pwunconv (8)   -	convert to and from shadow passwords and groups
    useradd (8)    -	create a new user or update default new user information
    userdel (8)    -	delete a user account and related files
    usermod (8)    -	modify a user account
    vigr (8)       -	edit the password, group, shadow-password or shadow-group file
    vipw (8)       -	edit the password, group, shadow-password or shadow-group file

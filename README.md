<!--
File          : README.md
Created       : Sat 07 Nov 2015 22:58:38
Last Modified : Mon 25 Jul 2016 23:52:35 sharlatan
Maintainer    : sharlatan <sharlatanus@gmail.com>
-->

# cix
_Collectlion of UNIX utilities tips_

## Intro
The aim of this repo is to collect short examples of command usage, to be
helpful for *nix beginners and interesting place for advanced users.
More detailed information containing here can be reach in man pages.

Man pages common sections.

1. General commands
2. Systems calls
3. C library functions
4. Special files
5. File formats and conventions
6. Games and Screen savers
7. Miscellaneous
8. System administration commands and daemons

## Index

    <package-name><link><description>

*   __Legacy__ *Keep the history*
    +   [unix-side](spices/unix-side.md) -
        Common Unix commands
    +   [hall of fame]()


*   __Core__ *Usually it contains on the most distributions*
    +   [gnu-core-utilities](spices/gnu-core-utilities.md) -
        basic file, shell and text manipulation utilities
    +   [util-linux](spices/util-linux.md) -
        is a standard package of the Linux operating system
    +   [busybox]()
        combines many common UNIX utilities into a single small executable.
    +   [get help]() -
        You don't have know everything you must know how to use: help, man, info
*   __Text processing__ *Everything is a file*
    + grep
    + awk
    + sed/ed
    + vim
    + emacs

*   __File System__ *Partition file system craft and check*
    +   [lvm2](spices/lvm2.md)
        Userland logical volume management tools
    +   [nfs-utils]()
    +   [curlftpfs]()
    +   [samba]()
    +   [quota](spices/linux_diskquota.md) -
        Linux DiskQuota - System tools for monitoring users disk usage
    +   [E2fsprogs](spices/e2fsprogs.md) -
        Filesystem utilities for use with Ext2/3/4.
    +   [btrfs-progs](spices/btrfs-progs.md)
        Userspace programs for btrfs.

*   __Networking__ *We all live in the someone's subnet in*
    +   [net-tools](spices/net-utils.md) -
        collection of base networking utilities
    +   [iputils](spices/iputils.md) -
        Network monitoring tools including ping
    +   [iproute2](spices/iproute2.md)
        routing commands and utilities
    +   [gnu-inetutils](spices/gnu-inetutils.md) -
        A collection of common network programs
    +   [iptables](spices/iptables.md) -
        userspace command line program used to configure packet filtering ruleset.
    +   [tcpdump](spices/tcpdump.md) -
        dump traffic on a network
    +   [nmap]()
    +   [netcat]()
    +   [OpenSSH]()

*   __Utillities__ *Be silent and help ppls*
    +   [kmod](spices/kmod.md)
        Linux kernel module management utilities
    +   [moreutils](spices/moreutils.md) -
        collection of the UNIX tools that nobody thought to write long ago when unix was young.
    +   [gnu-binutils](spices/gnu-binutils.md) -
        collection of binary tools
    +   [Findutils](spices/gnu-findutils.md)
        The GNU versions of find utilities (find and xargs)
    +   [pm-utils](spices/pm-utils.md) -
        suspend and powerstate setting framework
    +   [procps-ng](spices/procps-ng.md) -
        utilities for monitoring your system and its processes
    +   [psmisc](spices/psmisc.md) -
        This PSmisc is a set of small utilities that use the proc filesystem.
    +   [pciutils](spices/pciutils.md) -
        PCI bus related utilities
    +   [shadow-utils]()
        Utilities for managing accounts and shadow password files

*   __Reserche__
    +   [Linux Netkit](spices/netkit.md) -
        Utilities for managing processes on your system

*   __Packet managment__
    +   [Package managers utils](spices/pm_managers.md) -
        PM comparison table and tricks.
    +   [shadow-utils](spices/shadow-utils.md) -
        RPM packages

*   __Shell builtins__
    +   [gnu-bash-builtin](spices/gnu-bash-builtin.md) -
        GNU Bash shell built in commands
    +   [fish](http://fishshell.com/)
    +   [zsh](http://www.zsh.org/)

*   __*nix deamons/services__
    +   [samba]()
    +   [nfs]()

## Routines
    +   [VPS security](routines/vps_security.md)
    +   [VPS Web server](routines/vps_to_webserver.md)
    +   [Server load](routines/server_load.md)

## Reference
1. GNU Coreutils http://www.gnu.org/software/coreutils/manual/coreutils.html
2. Bioinformatics one-liners https://github.com/stephenturner/oneliners

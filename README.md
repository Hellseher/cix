<!--
File          : README.md
Created       : Sat 07 Nov 2015 22:58:38
Last Modified : Sun 06 Mar 2016 00:37:27 sharlatan
Maintainer    : sharlatan <sharlatanus@gmail.com>
-->

# cix #
_Collection of utilities for Unix like operating systems._

## Intro ##
The aim of this is repo to collect short examples of command usage, to be
helpful for *nix beginners and interesting place for advanced users.
All information containing here can be reach in man pages.

Man pages common sections.

1. General commands
2. Systems calls
3. C library functions
4. Special files
5. File formats and conventions
6. Games and Screen savers
7. Miscellanea
8. System administration commands and daemons

## Index ##

    <package-name><link><description>

*   __Legacy__ *Keep the history*
    +   [unix-side](utils/unix-side.md) -
        Common Unix commands
    +   [hole of fame]()

*   __Core__ *Usually it contains on the most distributions*
    +   [gnu-core-utilities](utils/gnu-core-utilities.md) -
        basic file, shell and text manipulation utilities
    +   [util-linux](utils/util-linux.md) -
        is a standard package of the Linux operating system
    +   [busybox]()
        combines many common UNIX utilities into a single small executable.

*   __File System__ *Partition file system craft and check*
    +   [quota](utils/linux_diskquota.md) -
        Linux DiskQuota - System tools for monitoring users disk usage
    +   [E2fsprogs](utils/e2fsprogs.md) -
        Filesystem utilities for use with Ext2/3/4.

*   __Networking__ *We all live in the someone's subnet in*
    +   [net-tools](utils/net-utils.md) -
        collection of base networking utilities
    +   [iputils](utils/iputils.md) -
        Network monitoring tools including ping
    +   [iproute2](utils/iproute2.md)
        routing commands and utilities
    +   [tcpdump]()
    +   [nmap]()
    +   [netcat]()
    +   [OpenSSH]()

*   __Utillities__
    +   [gnu-binutils](utils/gnu-binutils.md) -
        collection of binary tools
    +   [gnu-inetutils](utils/gnu-inetutils.md) -
        A collection of common network programs
    +   [Findutils](utils/gnu-findutils.md)
        The GNU versions of find utilities (find and xargs)
    +   [pm-utils](utils/pm-utils.md) -
        suspend and powerstate setting framework
    +   [procps-ng](utils/procps-ng.md) -
        utilities for monitoring your system and its processes
    +   [psmisc](utils/psmisc.md) -
        This PSmisc package is a set of some small useful utilities that use
        the proc filesystem.
    +   [pciutils](utils/pciutils.md) -
        PCI bus related utilities
    +   [lvm2]()

*   __Reserche__
    +   [Linux Netkit](utils/netkit.md) -
        Utilities for managing processes on your system

*   __Packet managment__
    +   [Package managers utils](utils/pm_managers.md) -
        PM comparison table and tricks.
    +   [shadow-utils](utils/shadow-utils.md) -
        RPM packages

*   __Shell builtins__
    +   [gnu-bash-builtin](utils/gnu-bash-builtin.md) -
        GNU Bash shell built in commands
    +   [fish](http://fishshell.com/)
    +   [zsh](http://www.zsh.org/)

*   __*nix deamons__
    +   [samba]()
    +   [nfs]()

*   __Routines__
    -   [VPS security](routines/vps_security.md)
    -   [VPS Web server](routines/vps_to_webserver.md)

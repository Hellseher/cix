<!--
File          : gnu-findutils.md
Created       : Tue 17 Nov 2015 22:54:30
Last Modified : Tue 06 Sep 2016 23:36:50 sharlatan
Maintainer    : sharlatan
-->

[[≣](../README.md#Index "Index")]
[[↷](https://www.gnu.org/software/findutils/)]

GNU Findutils
-------------

|     |     |
| --- | --- |
| __Author__ |Kevin Dalley <kevind@rahul.net>|
| __Maintainers__ ||
|| Eric B. Decker |
|| Michael Rendell |
|| David J. MacKenzie |
|| Jim Meyering |
|| Tim Wood |
|| Paul Eggert <eggert@cs.ucla.edu> |
|| James Youngman <jay@gnu.org> |
|| Jay Plett |
|| Paul Sheer |
|| Dmitry V. Levin |
|| Bas van Gompel |
|| Eric Blake <ebb9@byu.net> |
| __Realised__ |2000|
| __Source__ |[findutils git](http://git.savannah.gnu.org/cgit/findutils.git)|
| __Info__ |[GNU findutils](https://www.gnu.org/software/findutils/)|

The GNU Find Utilities are  the basic directory searching utilities of
the  GNU  operating  system.  These programs  are  typically  used  in
conjunction  with  other  programs  to provide  modular  and  powerful
directory search and file locating capabilities to other commands.

* * *

[find](gnu-findutils.md#find) : search for files in a directory hierarchy

    locate   : list files in databases that match a pattern
    updatedb : update a file name database
    xargs    : build and execute command lines from standard input

* * *

### find ###

    find [-H] [-L] [-P] [-D debugopts] [-Olevel] [path...] [expression]

copy all *jpg files from current directory to $HOME/Pictures one:

    $: find ./ -type f -name *jpg -exec cp {} ~/Pictures \;

find only in current directory (universal)

    $: find ./ \( ! -name . -prune \) \( -type -f -o -type l \) # POSIX version
    $: find ./ -maxdepth 1                                      # GNU version

find and show only unique files attribute from bunch of files:

    $: find ./ -type f -printf "%Td_%TB_%TY\n" | sort -u

show all files in current directory except hidden:

    $: find ./ -maxdepth 1 -type f -not '.*'

find specified "string" in list of files:

    $: find ./ -type f -exec grep "<string>" {} /dev/null \;

Find all the files on the file system that are called configuration,
ignoring case, and accommodating abbreviations such as confg, cnfg,
and cnfig using the following command:

    $: find / -regex '^[/a-z_]*[cC]+[Oo]*[nN]+[fF]+[iI]*[gF]+$'

find all files root directory with 777 permissions and chmod to 644;

    #: find / -type f -perm 0777 -print -exec chmod 644 {} \;

## Reference ##
1. A collection of Unix/Linux find command examples http://alvinalexander.com/unix/edu/examples/find.shtml
<!--
File          : gnu-findutils.md

Created       : Tue 17 Nov 2015 22:54:30
Last Modified : Sat 21 Nov 2015 23:11:17
Maintainer    : sharlatan
-->

[[≣](../README.md#Index "Index")]
GNU Findutils [](https://www.gnu.org/software/findutils/)
--------------------------------------------------------

The GNU Find Utilities are the basic directory searching utilities of the GNU
operating system. These programs are typically used in conjunction with other
programs to provide modular and powerful directory search and file locating
capabilities to other commands. 

***


*   [find](gnu-findutils.md#find) - search for files in a directory hierarchy
*   locate - list files in databases that match a pattern
*   updatedb - update a file name database
*   xargs - build and execute command lines from standard input 

## find ##

    find [-H] [-L] [-P] [-D debugopts] [-Olevel] [path...] [expression]


*   copy all found *jpg files to Home/Picture directory
    
    $: find . -type f -name *jpg -exec cp {} ~/Picture \;   

*   find only in current directory (universal) 
    
    $: find . \( ! -name . -prune \) \( -type -f -o -type l \) 
    $: find ./ -maxdepth 1

*   find and show only unique files attribute from bunch of files 
    
    $: find  ./ -type f -printf "%Td_%TB_%TY\n" | sort -u 

*   show all files in current directory except hidden
    
    $: find ./ -maxdepth 1 -type f -not '.*' 

*   find specified "string" in list of files 
    
    $: find ./ -type f -exec grep "<string>" {} /dev/null \;

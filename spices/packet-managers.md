<!--
File          : pm_managers.md

Created       : Sun 22 Nov 2015 01:21:10
Last Modified : Wed 10 Aug 2016 23:41:51 sharlatan
Maintainer    : sharlatan
-->

[[≣](../README.md#Index "Index")]
PM managers
-----------

## RPM [↷](http://www.rpm.org/) ##
_RPM Package Manager_

/var/lib/rpm

*   yum
*   dnf
*   rpm

epel, rpmforge, centalt и remi

## DEB [↷]() ##
__.deb, .udeb__
# commandlinefu.com - questions/comments: tech@commandlinefu.com

# Rolling upgrades via aptitude
sudo sh -c "aptitude update; aptitude -DrVWZ full-upgrade; aptitude autoclean;
exit"

# List files that are not owned by any installed package
for file in /usr/bin/*; do pacman -Qo "$file" &> /dev/null || echo "$file";
done

# Find stock debian package config files that have been modified since
installation
debsums

# Remove old kernel packages
dpkg -l linux-* | awk '/^ii/{ print $2}' | grep -v -e `uname -r | cut -f1,2
-d"-"` | grep -e [0-9] | xargs sudo apt-get -y purge

# dpkg - undo selection of installed packages for deinstall
dpkg -l | grep ^ri | awk '{print $2 " install"}' | sudo dpkg --set-selections

# List your largest installed packages.
dpkg-query -Wf '${Installed-Size}\t${Status}\t${Package}\n' | sort -n | grep
installed

# Find stock debian package config files that have been modified since
installation
dpkg-query -Wf  '${Package}\n' | xargs dpkg --status | sed
'/^Conffiles:/,/^Description:/!d;//d' | awk '{print $2 "  " $1}' | md5sum -c
2>/dev/null | grep FAILED$ | cut -f1 -d':'

# Arch Linux sort installed packages by size
pacman -Qi | grep 'Name\|Size\|Description' | cut -d: -f2 | paste  - - - | awk
-F'\t' '{ print $2, "\t", $1, "\t", $3 }' | sort -rn

# Removes all packages recommended by other packages
aptitude remove '?and( ?automatic(?reverse-recommends(?installed)),
?not(?automatic(?reverse-depends(?installed))) )'

# Shows all packages installed that are recommended by other packages
aptitude search '?and( ?automatic(?reverse-recommends(?installed)),
?not(?automatic(?reverse-depends(?installed))) )'

# Arch Linux sort installed packages by size
expac -S -H M "%m %n"|sort -n

# Seach for packages on Debian using regex.
aptitude search ^tin

# Arch Linux sort installed packages by size
pacman -Qi $(pacman -Qq)|grep 'Name\|Size'| cut -d: -f2 | paste - - | column -t
| sort -nk2

# Arch Linux sort installed packages by size
paste <(pacman -Q | awk '{ print $1; }' | xargs pacman -Qi | grep 'Size' | awk
'{ print $4$5; }') <(pacman -Q | awk '{print $1; }') | sort -n | column -t

# AD: Diff 2 entire servers at ScriptRock.com


*   dpkg
*   apt
*   aptetude
**   ## Pacman [↷](http://www.rpm.org/) ##

## PET [↷](http://www.rpm.org/) ##
## Portage [↷](http://www.rpm.org/) ##
## TGZ [↷](http://www.rpm.org/) ##

## Comparation
| Function              | RPM | DPKG |
|-----------------------+-----+------|
| list files in package |     |      |